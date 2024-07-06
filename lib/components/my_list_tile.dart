import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  void Function()? onTap;
  MyListTile(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}
