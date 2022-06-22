import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCurvedBottomNav extends StatefulWidget {
  const MyCurvedBottomNav({Key? key}) : super(key: key);

  @override
  State<MyCurvedBottomNav> createState() => _MyCurvedBottomNavState();
}

class _MyCurvedBottomNavState extends State<MyCurvedBottomNav> {
  final List<Text> pages = const [
    Text(
      'Heart',
      style: TextStyle(fontSize: 40),
    ),
    Text(
      'Like',
      style: TextStyle(fontSize: 40),
    ),
    Text('Alarm', style: TextStyle(fontSize: 40)),
    Text(
      'Menu',
      style: TextStyle(fontSize: 40),
    )
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.linear,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        height: 50,
        animationDuration: const Duration(milliseconds: 400),
        items: const [
          Icon(Icons.heart_broken),
          Icon(Icons.favorite_outline),
          Icon(Icons.add_alarm),
          Icon(Icons.menu)
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(child: pages[selectedIndex]),
    );
  }
}
