import 'package:flutter/material.dart';

import 'notifications_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Center(
          child: Column(
        children: [
          ListTile(
              leading: const CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage(
                    "assets/images/gs.jpg",
                  )),
              title:
                  const Text("Günther Schmitt", style: TextStyle(fontSize: 20)),
              subtitle: const Text("Play outside not online"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.qr_code, color: Colors.green)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.green)),
                ],
              )),
              const Divider(height: 20, thickness: 1, color: Colors.grey),
              const ListTile(
                leading: Icon(Icons.key_outlined),
                title: Text("Account", style:TextStyle(fontSize: 18)),
                subtitle: Text("Subtitle"),
                
              ),
              const ListTile(
                leading: Icon(Icons.lock_outline),
                title: Text("Privacy", style:TextStyle(fontSize: 18)),
                subtitle: Text("Subtitle"),
                
              ),
              ListTile(
                leading: const Icon(Icons.notifications_outlined),
                title: const Text("Notifications", style:TextStyle(fontSize: 18)),
                subtitle: const Text("Subtitle"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationsPage()),
                    );
                },
                
              ),
        ],
      )),
    );
  }
}
