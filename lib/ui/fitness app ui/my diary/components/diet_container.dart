import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DietContainer extends StatelessWidget {
  const DietContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
      child: Container(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        height: MediaQuery.of(context).size.height * 0.32,
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
              height: 60,
              width: 140,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 2,
                    color: const Color.fromARGB(255, 29, 123, 200),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Eaten',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                  'assets/png/fitness_app/eaten.png'),
                            ),
                            const Text(
                              '1127',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'kcal',
                              style: TextStyle(color: Colors.grey),
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
              top: 70,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                height: 60,
                width: 140,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 2,
                      color: const Color.fromARGB(255, 236, 78, 107),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Burned',
                            style: TextStyle(color: Colors.grey, fontSize: 17),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: Image.asset(
                                    'assets/png/fitness_app/burned.png'),
                              ),
                              const Text(
                                '102',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'kcal',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 138,
                child: Container(
                  height: 1.5,
                  width: 300,
                  color: Colors.grey[200],
                )),
            Positioned(
              top: 150,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 10, right: 10),
                height: 90,
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Carbs'),
                        LinearPercentIndicator(
                          padding: const EdgeInsets.all(0),
                          width: 70,
                          linearGradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 199, 199, 241),
                            Color.fromARGB(255, 46, 43, 223)
                          ]),
                          percent: 0.7,
                          backgroundColor: Colors.grey[300],
                          lineHeight: 4,
                          animationDuration: 1500,
                          animation: true,
                          barRadius: const Radius.circular(50),
                        ),
                        const Text(
                          '12g Left',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Protien'),
                        LinearPercentIndicator(
                          padding: const EdgeInsets.all(0),
                          width: 70,
                          percent: 0.30,
                          linearGradient: const LinearGradient(colors: [
                            Color.fromARGB(255, 243, 165, 179),
                            Color.fromARGB(255, 236, 78, 107),
                          ]),
                          lineHeight: 4,
                          backgroundColor: Colors.grey[300],
                          animationDuration: 1500,
                          animation: true,
                          barRadius: const Radius.circular(50),
                        ),
                        const Text(
                          '30g Left',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Fat'),
                        LinearPercentIndicator(
                          padding: const EdgeInsets.all(0),
                          width: 70,

                          linearGradient: const LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromARGB(255, 230, 189, 6),
                                Color.fromARGB(255, 243, 229, 167),
                              ]),
                          backgroundColor: Colors.grey[300],
                          // progressColor:
                          //     const Color.fromARGB(255, 230, 189, 6),
                          percent: 0.80,
                          lineHeight: 4,
                          animationDuration: 1500,
                          animation: true,
                          barRadius: const Radius.circular(50),
                        ),
                        const Text(
                          '10g Left',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 180,
              child: CircularPercentIndicator(
                radius: 50,
                maskFilter: const MaskFilter.blur(BlurStyle.solid, 5),
                lineWidth: 12,
                linearGradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 156, 156, 243),
                  Color.fromARGB(255, 13, 10, 185)
                ]),
                animation: true,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundWidth: 3,
                animationDuration: 2000,
                percent: 0.5,
                rotateLinearGradient: true,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '1200',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 43, 223),
                          fontSize: 28,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'kcal left',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
