import 'package:flutter/material.dart';

class FarmersImage extends StatelessWidget {
  const FarmersImage({
    Key? key,
    required this.height,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: height * 0.3,
      child: Image.asset(
        'assets/images/vegbanner.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
