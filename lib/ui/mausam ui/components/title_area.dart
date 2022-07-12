import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({
    Key? key,
    required this.size,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 15),
      width: size.width * 0.65,
      height: size.height * 0.050,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.red,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ],
      ),
    );
  }
}