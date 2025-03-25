import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: Center(
          child: Column(
        children: [
          const Divider(height: 20, thickness: 1, color: Colors.grey),
              ListTile(
                title: const Text("Conversation tones", style:TextStyle(fontSize: 18)),
                subtitle: const Text("Subtitle"),
                trailing: Switch(value: switchvalue, onChanged: (value) {
                  switchvalue = value;
                },),
              ),
              
        ],
      )),
    );
  }
}
