import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourcesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> _resources = [
    {
      'title': 'Self Defense Tips',
      'icon': Icons.self_improvement,
      'content': '''
• Be aware of your surroundings
• Trust your instincts
• Walk confidently
• Keep keys ready as a weapon
• Learn basic self-defense moves
• Avoid isolated areas at night
'''
    },
    {
      'title': 'Emergency Numbers',
      'icon': Icons.emergency,
      'content': '''
Police: 100
Ambulance: 108
Women Helpline: 1091
Fire: 101
Disaster Management: 108
'''
    },
    {
      'title': 'Legal Rights',
      'icon': Icons.gavel,
      'content': '''
• Right to equal treatment
• Protection against harassment
• Right to file complaints
• Legal aid availability
• Workplace safety rights
'''
    },
    {
      'title': 'Safety Apps',
      'icon': Icons.security,
      'content': '''
• WomenSafe (this app!)
• Safetipin
• Himmat
• Raksha
• Shake2Safety
'''
    },
  ];

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _resources.length,
        itemBuilder: (context, index) {
          final resource = _resources[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ExpansionTile(
              leading: Icon(resource['icon'], color: Colors.purple),
              title: Text(
                resource['title'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    resource['content'],
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
