import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Water extends StatelessWidget {
  const Water({
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
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Wrap(
                            children: const [
                              Text(
                                '2100',
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
                                  'ml',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 9, 41, 155),
                                      fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 0.0),
                          child: Text(
                            'of daily goal 3.5L',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 85,
                  child: Container(
                    height: 1.5,
                    width: 200,
                    color: Colors.grey[200],
                  )),
              Positioned(
                top: 90,
                child: Container(
                  height: 70,
                  width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.grey[700]!,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Today 8.26 am',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.notifications,
                            color: Color.fromARGB(255, 225, 104, 104),
                            size: 19,
                          ),
                          Text(
                            'Your bottle is empty, Refill it!',
                            style: TextStyle(
                                color: Color.fromARGB(255, 225, 104, 104)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 250,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(5),
                  height: 130,
                  width: 65,
                  child: LiquidLinearProgressIndicator(
                    borderRadius: 50,
                    backgroundColor: Colors.grey[200],
                    value: 0.5,
                    borderColor: Colors.white,
                    borderWidth: 0.1,
                    center: const Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                        '60%',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    valueColor: const AlwaysStoppedAnimation(
                        Color.fromARGB(255, 17, 55, 144)),
                    direction: Axis.vertical,
                  ),
                ),
              ),
              Positioned(
                top: 40,
                left: 200,
                child: Material(
                  elevation: 10,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 8, 69, 118),
                      size: 20,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                left: 200,
                child: Material(
                  elevation: 10,
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Color.fromARGB(255, 8, 69, 118),
                        size: 20,
                      ),
                    ),
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
