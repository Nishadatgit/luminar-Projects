import 'package:demo_project/assignments/farmers_fresh_zone_ui/home.dart';
import 'package:flutter/material.dart';

class FarmersTabArea extends StatelessWidget {
  const FarmersTabArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FarmersTab(
              tabName: 'vegetables',
            ),
            FarmersTab(
              tabName: 'Fruits',
            ),
            FarmersTab(
              tabName: 'exotic',
            ),
            FarmersTab(
              tabName: 'freshcuts',
            )
          ],
        ),
      ),
    );
  }
}

class FarmersTab extends StatelessWidget {
  FarmersTab({Key? key, required this.tabName}) : super(key: key);
  String tabName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
          border: Border.all(color: green.withOpacity(0.3)),
          color: green.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        child: Text(
          tabName.toUpperCase(),
          style: const TextStyle(
              fontSize: 13,
              color: Color.fromARGB(255, 11, 184, 17),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
