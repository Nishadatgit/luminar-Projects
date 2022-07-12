import 'package:flutter/material.dart';

class ProfileStack extends StatelessWidget {
  const ProfileStack({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.22,
      width: size.width,
      decoration: BoxDecoration(color: Colors.grey[100]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: size.height * 0.090,
            color: const Color.fromARGB(255, 206, 26, 13),
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: size.height * 0.22,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 30,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 3),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/girl.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.transparent,
                            shape: BoxShape.circle),
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Positioned(
                      left: size.width / 2.8,
                      child: SizedBox(
                        height: size.height * 0.090,
                        width: size.width * 0.57,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Sammunati bachat katha'.toUpperCase(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  'NPR. ',
                                  style: TextStyle(color: Colors.red),
                                ),
                                Text(
                                  '1.00,999.35',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 206, 26, 13),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.remove_red_eye,
                                  size: 16,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            const Text(
                              '2829382937357',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
