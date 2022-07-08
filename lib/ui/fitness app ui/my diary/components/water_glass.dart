import 'package:flutter/material.dart';

class WaterGlass extends StatelessWidget {
  const WaterGlass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(
          left: 20, right: 20, top: 30, bottom: 20),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 217, 216, 233),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 5, 33, 79),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ]),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 30,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 260,
              child: const Text(
                'Prepare your stomach for lunch with one or two glass of water',
                maxLines: 2,
                style: TextStyle(color: Colors.purple),
              ),
            ),
          ),
          Positioned(
              top: -25,
              left: -5,
              child: Image.asset(
                'assets/png/fitness_app/glass.png',
                height: 80,
                width: 80,
              ))
        ],
      ),
    );
  }
}