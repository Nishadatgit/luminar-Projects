import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyGoogleNavBar extends StatefulWidget {
  const MyGoogleNavBar({Key? key}) : super(key: key);

  @override
  State<MyGoogleNavBar> createState() => _MyGoogleNavBarState();
}

class _MyGoogleNavBarState extends State<MyGoogleNavBar> {
  final pages = [Icon(Icons.favorite), Icon(Icons.search)];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
        child: GNav(
            padding: EdgeInsets.all(10),
            gap: 10,
            rippleColor: Colors.grey,
            hoverColor: Colors.grey,
            activeColor: Colors.black,
            textStyle: GoogleFonts.aBeeZee(),
            tabBackgroundColor: Colors.grey,
            onTabChange: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            selectedIndex: selectedIndex,
            tabs: const [
              GButton(
                icon: Icons.favorite_outline,
                text: 'Like',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              )
            ]),
      ),
    );
  }
}
