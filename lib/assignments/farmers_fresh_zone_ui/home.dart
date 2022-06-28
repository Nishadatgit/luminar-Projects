import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Color green = Color.fromARGB(255, 58, 198, 62);

class FarmersHome extends StatelessWidget {
  FarmersHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const FarmersImage(),
              Container(
                width: double.infinity,
                height: 110,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black.withOpacity(0.3)),
                      color: Colors.white),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconsColumn(
                          icon: const Icon(
                            Icons.timelapse,
                            size: 40,
                            color: Colors.lightGreen,
                          ),
                          text: '30 mins policy',
                        ),
                        IconsColumn(
                          icon: const Icon(
                            EvaIcons.phoneCallOutline,
                            size: 40,
                            color: Colors.lightGreen,
                          ),
                          text: 'traceability',
                        ),
                        IconsColumn(
                          icon: Icon(Icons.abc_outlined),
                          text: 'local sourcing',
                        )
                      ],
                    ),
                  ),
                ),
              )
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
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        child: const Center(
          child: TextField(
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

class IconsColumn extends StatelessWidget {
  IconsColumn({Key? key, required this.icon, required this.text})
      : super(key: key);

  Icon icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 5,
            ),
            Text(
              text.toUpperCase(),
              style: const TextStyle(fontSize: 11, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class FarmersImage extends StatelessWidget {
  const FarmersImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 200,
      child: Image.asset(
        'assets/images/vegbanner.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class FarmersTabArea extends StatelessWidget {
  const FarmersTabArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            FarmersTab(
              tabName: 'vegetables',
            ),
            FarmersTab(
              tabName: 'Fruits',
            ),
            FarmersTab(
              tabName: 'exotic',
            ),
            FarmersTab(
              tabName: 'freshcuts',
            )
          ],
        ),
      ),
    );
  }
}

class FarmersTab extends StatelessWidget {
  FarmersTab({Key? key, required this.tabName}) : super(key: key);
  String tabName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          border: Border.all(color: green.withOpacity(0.3)),
          color: green.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Text(
          tabName.toUpperCase(),
          style: const TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 11, 184, 17),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
