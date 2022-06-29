import 'package:flutter/material.dart';

class FarmersImage extends StatelessWidget {
  const FarmersImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 200,
      child: Image.asset(
        'assets/images/vegbanner.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}