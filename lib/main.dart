import 'package:flutter/material.dart';
import 'package:florian_app/screens/home_screen.dart';
import 'package:florian_app/services/emergency_service.dart';
import 'package:florian_app/services/location_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(FlorianApp());
}

class FlorianApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Florian - WomenSafe',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}