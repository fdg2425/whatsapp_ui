import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool conversationTones = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          SwitchListTile(
            title: const Text(
              "Conversation Tones",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text("subtitle"),
            value: conversationTones,
            activeTrackColor: Colors.green,
            onChanged: (value) {
              setState(() {
                conversationTones = value;
              });
            },
          )
        ],
      )),
    );
  }
}
