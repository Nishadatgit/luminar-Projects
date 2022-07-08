import 'package:flutter/material.dart';

class BodyMeasurement extends StatelessWidget {
  const BodyMeasurement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
      child: Material(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(60),
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
          height: MediaQuery.of(context).size.height * 0.223,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 9, 69, 119),
                  offset: Offset(0, 5),
                  blurRadius: 5)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(60),
            ),
          ),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                height: 70,
                width: 140,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text(
                            'Weight',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Wrap(
                            children: const [
                              Text(
                                '206.8',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                  color: Color.fromARGB(255, 9, 41, 155),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 11.0),
                                child: Text(
                                  'lbs',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 9, 41, 155),
                                      fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 85,
                  child: Container(
                    height: 1.5,
                    width: 300,
                    color: Colors.grey[200],
                  )),
              Positioned(
                top: 90,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 10, right: 10),
                  height: 70,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('185 cm'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Height',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('27.3 BMI'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Overweight',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('20%'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fat',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 160,
                child: Container(
                  height: 50,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.grey[700]!,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Today 8.26 am',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: const [
                          Text(
                            'In body smart scale',
                            style: TextStyle(
                                color: Color.fromARGB(255, 9, 41, 155),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
