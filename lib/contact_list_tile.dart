import 'package:flutter/material.dart';

import 'contact.dart';

class ContactListTile extends StatefulWidget {
  const ContactListTile({super.key, required this.contact});

  final Contact contact;

  @override
  State<ContactListTile> createState() => _ContactListTileState();
}

class _ContactListTileState extends State<ContactListTile> {
  @override
  Widget build(BuildContext context) {
    var imagePath =
        widget.contact.imagePath ?? "assets/images/default_image.jpg";

    return ListTile(
      onTap: () {
        setState(() {
          widget.contact.countOfNewMessages = 0;
        });
      },
      leading: CircleAvatar(foregroundImage: AssetImage(imagePath)),
      title: Row(
        children: [
          Expanded(
            child: Text(widget.contact.name,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.normal),
                overflow: TextOverflow.ellipsis,
                softWrap: false),
          ),
          const SizedBox(width: 15),
          Text(
            widget.contact.getDateOfLastMessageAsString(),
            style: TextStyle(
                fontSize: 14,
                color: widget.contact.countOfNewMessages > 0
                    ? Colors.green
                    : null),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              widget.contact.lastMessage,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (widget.contact.countOfNewMessages > 0)
            Badge(
              label: Text("${widget.contact.countOfNewMessages}",
                  style: const TextStyle(fontSize: 12)),
              backgroundColor: Colors.green,
            )
        ],
      ),
    );
  }
}
