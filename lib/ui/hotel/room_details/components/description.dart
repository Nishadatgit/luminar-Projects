import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
          child: Text(
            description,
            maxLines: 12,
            softWrap: true,
            style: const TextStyle(
                fontSize: 15, wordSpacing: 3, letterSpacing: 0.3),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}