import 'package:flutter/material.dart';
import 'contacts/contact_list_tile.dart';
import 'contacts/contact_provider.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key, required this.contactProvider});

  final ContactProvider contactProvider;

  @override
  Widget build(BuildContext context) {
    var contacts = contactProvider.contacts;

    // return SingleChildScrollView(
    //   child: Column(
    //     children: [
    //       for (var contact in contacts) ContactListTile(contact: contact),
    //     ],
    //   ),
    // );

    return ListView(children: [
      for (var contact in contacts) ContactListTile(contact: contact),
    ]);
  }
}
