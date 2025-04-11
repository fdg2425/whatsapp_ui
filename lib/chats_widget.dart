import 'package:flutter/material.dart';
import 'contact_list_tile.dart';
import 'contact_provider.dart';

class ChatsWidget extends StatelessWidget {
  ChatsWidget({super.key});

  final provider = ContactProvider();

  @override
  Widget build(BuildContext context) {
    var contacts = provider.contacts;

    return Column(
      children: [
        ContactListTile(contact: contacts[0]),
        ContactListTile(contact: contacts[1]),
        ContactListTile(contact: contacts[2]),
      ],
    );
  }
}
