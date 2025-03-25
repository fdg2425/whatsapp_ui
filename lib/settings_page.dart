import 'package:flutter/material.dart';

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
        ],
      )),
    );
  }
}
