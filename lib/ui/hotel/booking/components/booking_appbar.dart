import 'package:flutter/material.dart';

class BookingAppBar extends StatelessWidget {
  const BookingAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      toolbarHeight: 60,
      backgroundColor: Colors.white.withOpacity(0.1),
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello @MohamedNishad',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              'Find your favourite hotel',
              style: TextStyle(color: Colors.black, fontSize: 17),
            )
          ],
        ),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15.0, right: 20, bottom: 10, left: 15),
          child: Container(
            height: 25,
            width: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400]!,
                    offset: const Offset(0, 4),
                    blurRadius: 2),
              ],
              color: Colors.white,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/girl3.jpg'),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        )
      ],
    );
  }
}
