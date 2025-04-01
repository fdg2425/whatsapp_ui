import 'package:flutter/material.dart';

class ActiveNavigationBarIcon extends StatelessWidget {
  const ActiveNavigationBarIcon({super.key, required this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 25),
        //margin: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          color: const Color.fromARGB(144, 164, 247, 108),
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        child: Icon(iconData));
  }
}
