import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key, required this.title, required this.leadingIcon})
      : super(key: key);
  final String title;
  final Icon leadingIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        iconColor: Colors.white,
        textColor: Colors.white,
        title: Text(title),
        tileColor: Colors.pink[500],
        leading: leadingIcon);
  }
}
