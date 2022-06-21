import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyGoogleNavBar extends StatefulWidget {
  const MyGoogleNavBar({Key? key}) : super(key: key);

  @override
  State<MyGoogleNavBar> createState() => _MyGoogleNavBarState();
}

class _MyGoogleNavBarState extends State<MyGoogleNavBar> {
  static const TextStyle textStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  final List<Text> pages = const [
    Text(
      'Likes',
      style: textStyle,
    ),
    Text(
      'Search',
      style: textStyle,
    ),
    Text(
      'Collections',
      style: textStyle,
    ),
    Text(
      'Reels',
      style: textStyle,
    )
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.2),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
                // backgroundColor: Colors.white,
                // tabShadow: [BoxShadow(color: Colors.black.withOpacity(0.1))],
                //  tabBackgroundGradient:
                // const LinearGradient(colors: [Colors.red, Colors.blue]),
                // padding: const EdgeInsets.all(15),
                // gap: 10,
                // style: GnavStyle.google,
                // color: Colors.blueGrey,
                // rippleColor: Colors.black,
                // hoverColor: Colors.grey,
                // tabActiveBorder: Border.all(color: Colors.white),
                // activeColor: Colors.black,
                // textStyle: GoogleFonts.aBeeZee(),

                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[300]!,
                color: Colors.black,
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
                    iconColor: Colors.red,
                    iconActiveColor: Colors.black,
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                    iconColor: Colors.blue,
                    iconActiveColor: Colors.black,
                  ),
                  GButton(
                    icon: FontAwesomeIcons.instagram,
                    text: 'Collections',
                    iconColor: Colors.purple,
                  ),
                  GButton(
                    icon: FontAwesomeIcons.angellist,
                    text: 'Yo-Yo',
                    iconColor: Colors.orange,
                    iconActiveColor: Colors.black,
                  ),
                ]),
          ),
        ),
      ),
      body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(child: pages[selectedIndex])),
    );
  }
}
