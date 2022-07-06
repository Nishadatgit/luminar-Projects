import 'package:flutter/material.dart';

class HotelCardsArea extends StatelessWidget {
  const HotelCardsArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HotelCard(
            color: Color.fromARGB(255, 222, 94, 85),
            text: 'Hotel',
            icon: Icons.bed,
          ),
          HotelCard(
            color: Color.fromARGB(255, 69, 155, 226),
            text: 'Restaurant',
            icon: Icons.bed,
          ),
          HotelCard(
            color: Color.fromARGB(255, 231, 163, 62),
            text: 'Cafe',
            icon: Icons.coffee,
          ),
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
