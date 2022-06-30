import 'package:demo_project/assignments/farmers_fresh_zone_ui/components/category.dart';
import 'package:demo_project/assignments/farmers_fresh_zone_ui/components/features.dart';
import 'package:demo_project/assignments/farmers_fresh_zone_ui/components/image_area.dart';
import 'package:demo_project/assignments/farmers_fresh_zone_ui/components/tab_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

const Color green = Color.fromARGB(255, 27, 174, 32);

class FarmersHome extends StatefulWidget {
  const FarmersHome({Key? key}) : super(key: key);

  @override
  State<FarmersHome> createState() => _FarmersHomeState();
}

class _FarmersHomeState extends State<FarmersHome> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange: (value) {
          print(value);
          selectIndex = value;
        },
        selectedIndex: selectIndex,
        tabBorderRadius: 0,
        iconSize: 20,
        tabBackgroundGradient:
            LinearGradient(colors: [Colors.grey[300]!, Colors.grey[200]!]),
        color: Colors.grey,
        tabMargin: EdgeInsets.all(0),
        tabBackgroundColor: Colors.grey[200]!,
        padding:
            const EdgeInsets.only(left: 40, bottom: 10, right: 40, top: 10),
        textSize: 10,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'HOME',
          ),
          GButton(
            icon: FontAwesomeIcons.cartShopping,
            text: 'CART',
            iconSize: 17,
          ),
          GButton(
            icon: Icons.person,
            text: 'PERSON',
          )
        ],
        style: GnavStyle.oldSchool,
        activeColor: green,
        duration: const Duration(microseconds: 100),
      ),
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: false,
            pinned: true,
            backgroundColor: green,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        size: 18,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('Kochi'),
                      Icon(
                        EvaIcons.arrowIosDownward,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ],
            title: Text(
              'farmers fresh zone'.toUpperCase(),
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
            bottom: searchBar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const FarmersTabArea(),
              FarmersImage(
                height: size,
              ),
              const FarmersFeatures(),
              const FarmersCategory(),
            ]),
          )
        ],
      ),
    );
  }

  AppBar searchBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: green,
      title: Container(
        alignment: Alignment.center,
        height: 35,
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(7)),
        child: const Center(
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              hintText: 'Search for Vegetables , Fruits ...',
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                size: 23,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
