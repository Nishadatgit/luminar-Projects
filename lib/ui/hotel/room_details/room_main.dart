import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'components/book_button.dart';
import 'components/description.dart';
import 'components/image_stack.dart';
import 'components/rating_and_price.dart';

class RoomMainPage extends StatefulWidget {
  const RoomMainPage({Key? key, required this.roomImage}) : super(key: key);

  static const String description =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)";

  static const Color pColor = Color.fromARGB(255, 49, 20, 168);
   final String roomImage;

  @override
  State<RoomMainPage> createState() => _RoomMainPageState();
}

class _RoomMainPageState extends State<RoomMainPage> {
   

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          ImageStack(
            room: widget.roomImage,
          ),
          Column(
            children: [
              const RatingAndPrice(pColor: RoomMainPage.pColor),
              const BookNowButton(pColor: RoomMainPage.pColor),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'DESCRIPTION',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Description(description: RoomMainPage.description)
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Serach'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_rounded), label: 'Favorites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
