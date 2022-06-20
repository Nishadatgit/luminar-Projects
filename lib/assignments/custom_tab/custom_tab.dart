import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTabView extends StatelessWidget {
  const CustomTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: const Duration(milliseconds: 500),
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              'Whatapp',
            ),
          ),
          body: Column(
            children: [
              Container(
                height: 40,
                //width: 350,
                margin: const EdgeInsets.only(top: 10, left: 0, right: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(20)),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.green,
                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    splashBorderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    tabs: const [
                      Tab(
                        text: 'Chat',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                      Tab(
                        text: 'Calls',
                      ),
                      Tab(
                        text: 'Settings',
                      )
                    ]),
              ),
              const Expanded(
                child: TabBarView(children: [
                  Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Status',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Calls',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
