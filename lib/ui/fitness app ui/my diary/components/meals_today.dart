import 'package:flutter/material.dart';

class MealsToday extends StatelessWidget {
  const MealsToday({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            StackCurved(
              pColor: Color.fromARGB(255, 238, 111, 92),
              sColor: Color.fromARGB(255, 244, 146, 131),
              img: 'breakfast',
              type: 'BreakFast',
              cal: '502',
              threeFood: 'Bread,\nPeanut butter,\nApple',
            ),
            StackCurved(
              pColor: Color.fromARGB(255, 15, 124, 233),
              sColor: Color.fromARGB(255, 73, 176, 228),
              img: 'lunch',
              type: 'Lunch',
              cal: '602',
              threeFood: 'Salmon,\nMixed Veggies,\nAvocado',
            ),
            StackCurved(
              pColor: Color.fromARGB(255, 238, 66, 117),
              sColor: Color.fromARGB(255, 231, 109, 145),
              img: 'snack',
              cal: '200',
              type: 'Snack',
              threeFood: 'Samosa,\nPazhampori,\nTea',
            ),
            StackCurved(
              pColor: Color.fromARGB(255, 237, 119, 35),
              sColor: Color.fromARGB(255, 243, 177, 133),
              img: 'dinner',
              cal: '574',
              type: 'Dinner',
              threeFood: 'Chappathi,\nGravy,\nChicken',
            ),
          ],
        ),
      ),
    );
  }
}

class StackCurved extends StatelessWidget {
  const StackCurved({
    Key? key,
    required this.img,
    required this.pColor,
    required this.sColor,
    required this.threeFood,
    required this.type,
    required this.cal,
  }) : super(key: key);
  final String img;
  final Color pColor;
  final Color sColor;
  final String threeFood;
  final String type;
  final String cal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: CurvedCard(
            threeFood: threeFood,
            type: type,
            cal: cal,
            color1: pColor,
            color2: sColor,
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: SizedBox(
            height: 70,
            width: 70,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(0.3),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/png/fitness_app/$img.png'),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CurvedCard extends StatelessWidget {
  const CurvedCard({
    Key? key,
    required this.color1,
    required this.color2,
    required this.cal,
    required this.type,
    required this.threeFood,
  }) : super(key: key);
  final Color color1;
  final Color color2;
  final String cal;
  final String type;
  final String threeFood;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color1, color2]),
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topLeft: Radius.circular(10),
            topRight: Radius.circular(60)),
      ),
      height: 170,
      width: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10),
            child: Text(
              type,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              threeFood,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Wrap(spacing: 3, children: [
              Text(
                cal,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  'kcal',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
