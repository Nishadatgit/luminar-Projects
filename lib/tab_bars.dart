import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarsDemo extends StatelessWidget {
  const TabBarsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: Duration(seconds: 1),
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('Tabs'),
          ),
          body: Column(
            children: [
              const TabBar(
                  isScrollable: true,
                  splashBorderRadius: BorderRadius.all(Radius.circular(20)),
                  padding: EdgeInsets.only(left: 10, right: 50, top: 20),
                  tabs: [
                    Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  Tab(
                    child: Image.asset('assets/images/image.jpg'),
                  ),
                  const Tab(
                    text: 'Profile',
                  ),
                  const Tab(
                    text: 'Settings',
                  ),
                  Tab(
                    child: Image.asset('assets/images/image.jpg'),
                  ),
                  const Tab(
                    text: 'Profile',
                  ),
                  const Tab(
                    text: 'Settings',
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
