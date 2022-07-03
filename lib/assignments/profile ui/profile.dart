import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class ProfileUi extends StatelessWidget {
  const ProfileUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/svg/menu.svg',
                      color: Colors.black,
                      height: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 130,
              width: 130,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(10, 10),
                        blurRadius: 25),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-10, -10),
                        blurRadius: 17),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(1, 1),
                        blurRadius: 25),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-1, -1),
                        blurRadius: 17)
                  ]),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/girl3.jpg',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 70, right: 70, top: 25),
              height: 40,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/fb.svg',
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      'assets/svg/googleplus.svg',
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      'assets/svg/twitter.svg',
                      height: 50,
                      width: 50,
                    ),
                    SvgPicture.asset(
                      'assets/svg/linkedin.svg',
                      height: 50,
                      width: 50,
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 50, right: 50, top: 30),
              height: 80,
              child: Column(
                children: const [
                  Text(
                    'chromicle',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@nishad',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(left: 40, right: 40, top: 30),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
