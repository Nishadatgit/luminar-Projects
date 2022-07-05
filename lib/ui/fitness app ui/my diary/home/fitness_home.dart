import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/app_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/diet_container.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/meals_today.dart';
import 'package:flutter/material.dart';
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
    );
  }
}

