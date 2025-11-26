# 🛡️ Florian - Women Safety App

A comprehensive Flutter-based women safety application designed to provide immediate assistance and resources in emergency situations.

![Flutter](https://img.shields.io/badge/Flutter-3.16-blue)
![Dart](https://img.shields.io/badge/Dart-3.0-blue)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-green)

## 📱 App Overview

Florian is a feature-rich safety application that empowers women with quick access to emergency services, safety resources, and location-based assistance. Built with Flutter and Dart, it provides a seamless cross-platform experience.

## ✨ Features

### 🚨 Emergency Features
- **One-Tap Emergency Alert** - Instant help with location sharing
- **Quick Dial Shortcuts** - Direct access to police, ambulance, and women helpline
- **Location Services** - Real-time GPS tracking and sharing
- **Emergency Contacts** - Customizable trusted contacts list

### 🗺️ Safety Tools
- **Safety Map** - Locate nearby police stations, hospitals, and safe places
- **Route Planning** - Safe route suggestions (future update)
- **Resource Directory** - Local support services and shelters

### 📚 Educational Resources
- **Self-Defense Tips** - Practical safety advice
- **Legal Rights** - Information on women's rights and legal protection
- **Emergency Protocols** - Step-by-step emergency procedures

## 🛠️ Technical Stack

- **Framework**: Flutter 3.16+
- **Language**: Dart 3.0+
- **State Management**: Built-in Flutter State
- **Maps**: Google Maps Flutter
- **Notifications**: Flutter Local Notifications
- **Location**: Geolocator Plugin
- **Storage**: Shared Preferences

## 📋 Prerequisites

Before running this project, ensure you have:

- Flutter SDK (3.16.0 or higher)
- Dart (3.0.0 or higher)
- Android Studio / VS Code
- Android Emulator or Physical Device
- Google Maps API Key (for full map functionality)

## 🚀 Installation & Setup

### 1. Clone the Repository

git clone https://github.com/SilensorFarouk/florian_app.git
cd florian_app2. Install Dependencies
bash
flutter pub get
#3. Configure Environment (Optional)
Create a .env file for API keys:

dart
GOOGLE_MAPS_API_KEY=your_maps_api_key_here
#4. Run the Application
bash
## For development
flutter run

## For production build
flutter build apk
📁 Project Structure
text
lib/
├── models/
│   ├── emergency_contact.dart
│   └── safe_location.dart
├── screens/
│   ├── home_screen.dart
│   ├── emergency_screen.dart
│   ├── safety_map_screen.dart
│   ├── contacts_screen.dart
│   └── resources_screen.dart
├── services/
│   ├── emergency_service.dart
│   └── location_service.dart
└── main.dart
🔧 Configuration
Google Maps Setup
Get API key from Google Cloud Console

Add to android/app/src/main/AndroidManifest.xml:

xml
<meta-data
    android:name="com.google.android.geo.API_KEY"
    android:value="YOUR_API_KEY"/>
Permissions
The app requires:

Location Access (for emergency alerts)

Phone (for emergency calls)

SMS (for alert messages)

Camera (future feature)

🎯 Usage Guide
Emergency Mode
Tap the large red emergency button

Confirm the alert in the dialog

App will automatically:

Share your location with emergency contacts

Call local emergency services

Send SMS alerts with your coordinates

Adding Emergency Contacts
Navigate to Contacts screen

Tap the + button

Add contact name and phone number

Set as primary contact if desired

Using Safety Map
Open Safety Map from navigation

View nearby safe locations (police, hospitals)

Get directions to safe places

Share your location if needed

🌐 Web Deployment
The app is also available as a web application:

bash
flutter build web
Deploy the build/web folder to any static hosting service:

Netlify

GitHub Pages

Firebase Hosting

🤝 Contributing
We welcome contributions! Please feel free to submit issues, fork the repository, and create pull requests.

Development Setup
Fork the repository

Create a feature branch: git checkout -b feature/amazing-feature

Commit changes: git commit -m 'Add amazing feature'

Push to branch: git push origin feature/amazing-feature

Open a Pull Request

📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

🆘 Support
If you encounter any issues or have questions:

Check existing Issues

Create a new issue with detailed description

Contact: [Your Email]

🙏 Acknowledgments
Flutter team for the amazing framework

Google Maps for location services

UN Sustainable Development Goals (SDG 5: Gender Equality) inspiration

Open-source community for valuable plugins and resources

📞 Emergency Resources
Important: This app is a tool, not a replacement for professional emergency services. In case of immediate danger, always call your local emergency number.

Police: 100

Ambulance: 108

Women Helpline: 1091

Disaster Management: 108


