import 'package:flutter/material.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: Center(
          child: Column(
        children: [
          const Divider(height: 20, thickness: 1, color: Colors.grey),
          SwitchListTile(
            title: const Text("Conversation tones",
                style: TextStyle(fontSize: 18)),
            subtitle: const Text("Subtitle"),
            activeColor: Colors.green,
            value: switchvalue,
            onChanged: (value) {
              setState(() {
                switchvalue = value;
              });
            },
          ),
        ],
      )),
    );
  }
}
