import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/app_bar.dart';
import 'package:demo_project/ui/fitness%20app%20ui/my%20diary/components/diet_container.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        slivers: [
          appBar(),
          SliverList(
            delegate: SliverChildListDelegate(
                [const TitleArea(), const DietContainer()]),
          )
        ],
      ),
    );
  }
}
