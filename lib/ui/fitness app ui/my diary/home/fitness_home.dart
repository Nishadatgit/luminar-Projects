import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/app_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/diet_container.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/meals_today.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import '../components/body_measurement.dart';
import '../components/title_area.dart';
import '../components/water.dart';

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
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 16, 38, 166),
            Color.fromARGB(255, 143, 157, 236),
          ]),
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 25,
              color: Colors.white,
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [Icons.home, Icons.favorite, Icons.search, Icons.person],
        activeIndex: selectedindex,
        activeColor: const Color.fromARGB(255, 7, 81, 142),
        gapLocation: GapLocation.center,
        shadow: Shadow(
            color: Colors.grey[200]!, offset: Offset(0, -5), blurRadius: 10),
        inactiveColor: Colors.grey[600],
        notchSmoothness: NotchSmoothness.sharpEdge,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
    );
  }
}
