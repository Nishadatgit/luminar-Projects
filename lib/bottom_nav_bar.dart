import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({Key? key}) : super(key: key);

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int selectedIndex = 0;
  bool icon1selected = false;
  bool icon2selected = false;

  final pages = const [
    Icon(
      FontAwesomeIcons.google,
      size: 70,
    ),
    Icon(
      FontAwesomeIcons.facebook,
      size: 70,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          backgroundColor: Colors.pinkAccent,
          currentIndex: selectedIndex,
          selectedFontSize: 15,
          unselectedFontSize: 10,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              icon1selected = !icon1selected;
              icon2selected = false;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add), label: icon1selected ? '' : 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.minimize), label: icon2selected ? 'minus' : '')
          ]),
    );
  }
}
