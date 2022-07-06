import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    Key? key,
    required this.pColor,
  }) : super(key: key);

  final Color pColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [pColor, pColor.withOpacity(0.8)]),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: const Text(
          'Book Now',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
