import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/app_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/diet_container.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/meals_today.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../components/body_measurement.dart';
import '../components/title_area.dart';

class FitnessUiHome extends StatefulWidget {
  const FitnessUiHome({Key? key}) : super(key: key);

  @override
  State<FitnessUiHome> createState() => _FitnessUiHomeState();
}

class _FitnessUiHomeState extends State<FitnessUiHome> {
  int selectedindex = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          appBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const TitleArea(
                title: 'Medeterenian diet',
                btnTitle: 'Details',
              ),
              const DietContainer(),
              const TitleArea(
                title: 'Meals Today',
                btnTitle: 'Customize',
              ),
              const MealsToday(),
              const TitleArea(title: 'Body Measurement', btnTitle: 'Today'),
              const BodyMeasurement(),
              const TitleArea(title: 'Water', btnTitle: 'AquaSmartBottle'),
              const Water()
            ]),
          )
        ],
      ),
    );
  }
}

class Water extends StatelessWidget {
  const Water({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 5),
      child: Material(
        elevation: 5,
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
                  color: Colors.red,
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 15, left: 10, right: 10),
                  height: 70,
                  width: 200,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            width: 10,
                          ),
                          Text(
                            'Today 8.26 am',
                            style: TextStyle(color: Colors.grey[700]),
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
