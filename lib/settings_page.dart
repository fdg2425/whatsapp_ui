import 'package:flutter/material.dart';
import 'package:whatsapp_ui/notifications_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: Colors.white,
      ),
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
          const Divider(
            height: 10.0,
            thickness: 1.0,
            color: Colors.grey,
          ),
          const ListTile(
            leading: Icon(Icons.key),
            title: Text(
              "Account",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("subtitle"),
          ),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text(
              "Privacy",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text("subtitle"),
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: const Text(
              "Notifications",
              style: TextStyle(fontSize: 18),
            ),
            subtitle: const Text("subtitle"),
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
