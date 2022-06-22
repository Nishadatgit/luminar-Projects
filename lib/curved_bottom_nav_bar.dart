import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
      'Profile',
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
            Icon(EvaIcons.person),
            Icon(Icons.favorite_outline),
            Icon(Icons.add_alarm),
            Icon(Icons.menu)
          ],
          backgroundColor:
              selectedIndex == 0 ? Colors.lightGreen[500]! : Colors.lightGreen),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink, Colors.purple, Colors.lightGreen])),
          child: Center(child: pages[selectedIndex])),
    );
  }
}
