import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DLFUi extends StatelessWidget {
  const DLFUi({Key? key}) : super(key: key);

  static const pColor = Color.fromARGB(
    255,
    244,
    106,
    152,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: pColor,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'DLF Phase1, Gurgaon',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.all(14.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: pColor,
                  backgroundImage: AssetImage(
                    'assets/images/avatar.png',
                  ),
                ),
              )
            ],
            bottom: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.3),
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: pColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Search for products,ingredients',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          const Color.fromARGB(255, 3, 132, 93),
                          const Color.fromARGB(255, 3, 132, 93).withOpacity(0.8)
                        ])),
                margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Up to 25% off on\nhealthy teas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      'This everyday essential has \nOmega-3 fatty scid with s\nspecial',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Text('Explore more'),
                      label: const Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    padding: const EdgeInsets.all(0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 15,
                            crossAxisSpacing: 15,
                            crossAxisCount: 3),
                    itemBuilder: (ctx, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[200]!, width: 3),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        height: 100,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70,
                              width: 60,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('assets/images/candy.jpg'),
                                ),
                              ),
                            ),
                            const Text('Heart Health')
                          ],
                        ),
                      );
                    }),
              )
            ]),
          )
        ],
      ),
    );
  }
}
