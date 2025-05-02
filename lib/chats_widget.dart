import 'package:flutter/material.dart';
import 'contact_list_tile.dart';
import 'contact_provider.dart';

class ChatsWidget extends StatelessWidget {
  ChatsWidget({super.key, required this.contactProvider});

  final contactProvider;

  @override
  Widget build(BuildContext context) {
    var contacts = contactProvider.contacts;

    return SingleChildScrollView(
      child: Column(
        children: [
          for (var contact in contacts) ContactListTile(contact: contact),
        ],
      ),
    );
  }
}
