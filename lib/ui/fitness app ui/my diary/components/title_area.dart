import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  const TitleArea({
    Key? key,
    required this.title,
    required this.btnTitle,
  }) : super(key: key);

  final String title;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Text(
              btnTitle,
              style: const TextStyle(
                color: Color.fromARGB(255, 8, 85, 148),
              ),
            ),
            label: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
