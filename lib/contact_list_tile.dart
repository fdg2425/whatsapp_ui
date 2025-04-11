import 'package:flutter/material.dart';

import 'contact.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    var imagePath = contact.imagePath ?? "assets/images/default_image.jpg";

    return ListTile(
      leading: CircleAvatar(foregroundImage: AssetImage(imagePath)),
      title: Row(
        children: [
          Expanded(
            child: Text(contact.name,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
                overflow: TextOverflow.ellipsis,
                softWrap: false),
          ),
          const SizedBox(width: 15),
          Text(
            contact.getDateOfLastMessageAsString(),
            style: TextStyle(
                fontSize: 14,
                color: contact.countOfNewMessages > 0 ? Colors.green : null),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              contact.lastMessage,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (contact.countOfNewMessages > 0)
            Badge(
              label: Text("${contact.countOfNewMessages}",
                  style: const TextStyle(fontSize: 12)),
              backgroundColor: Colors.green,
            )
        ],
      ),
    );
  }
}
