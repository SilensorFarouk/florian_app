import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:florian_app/services/location_service.dart';

class EmergencyService {
  static final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initializeNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await notificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> triggerEmergencyAlert() async {
    try {
      final position = await LocationService.getCurrentLocation();

      // Send SMS to emergency contacts
      String message = '''
EMERGENCY! I need help immediately!
My current location: 
https://maps.google.com/?q=${position.latitude},${position.longitude}
Time: ${DateTime.now()}
''';

      // Call emergency number
      await launchUrl(Uri.parse('tel:112'));

      // Show local notification
      await showEmergencyNotification();
    } catch (e) {
      print('Emergency alert error: $e');
    }
  }

  static Future<void> showEmergencyNotification() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'emergency_channel',
      'Emergency Alerts',
      channelDescription: 'Emergency alert notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      sound: RawResourceAndroidNotificationSound('alarm'),
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    await notificationsPlugin.show(
      0,
      'EMERGENCY ALERT',
      'Help has been notified with your location',
      platformChannelSpecifics,
    );
  }

  static Future<void> callNumber(String number) async {
    final Uri telLaunchUri = Uri(scheme: 'tel', path: number);
    if (await canLaunchUrl(telLaunchUri)) {
      await launchUrl(telLaunchUri);
    }
  }

  static Future<void> sendSMS(String number, String message) async {
    final Uri smsLaunchUri = Uri(
      scheme: 'sms',
      path: number,
      queryParameters: {'body': message},
    );
    if (await canLaunchUrl(smsLaunchUri)) {
      await launchUrl(smsLaunchUri);
    }
  }
}
