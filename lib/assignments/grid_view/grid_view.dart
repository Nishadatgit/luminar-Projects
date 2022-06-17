import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class IconGridView extends StatelessWidget {
  IconGridView({Key? key}) : super(key: key);
  final List titles = [
    'Twitter',
    'Instagram',
    'Whatsapp',
    'Github',
    'Google',
    'Facebook'
  ];
  final List icons = [
    FontAwesomeIcons.twitter,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.whatsapp,
    FontAwesomeIcons.github,
    FontAwesomeIcons.google,
    FontAwesomeIcons.facebook
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Menu',
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          children: List.generate(titles.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 3,
                            color: Colors.grey.withOpacity(0.2),
                            style: BorderStyle.solid),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      icons[index],
                      color: Colors.yellow,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(titles[index])
                ],
              ),
            );
          })),
    );
  }
}
