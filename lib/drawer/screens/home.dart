import 'dart:math';

import 'package:demo_project/drawer/screens/about.dart';
import 'package:demo_project/drawer/screens/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  late String currentImage;

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final images = [
    'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
    'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',
    'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
    'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg'
  ];
  late String current = images[0];
  @override
  void initState() {
    current = images[0];
    super.initState();
  }

  String profile = 'assets/images/mypic.jpg';
  // String myPic = 'assets/images/insta_dp.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 10,
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(EvaIcons.heartOutline),
            color: Colors.red,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.blue,
              )),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white.withOpacity(0.2),
        ),
        child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BackImage(image: current),
                  ));
                },
                onDoubleTap: () {
                  setState(() {
                    var rand = Random();
                    int n = rand.nextInt(images.length);
                    current = images[n];
                  });
                },
                child: UserAccountsDrawerHeader(
                  margin: const EdgeInsets.only(bottom: 0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        opacity: 0.8,
                        image: NetworkImage(current)),
                  ),
                  accountName: const Text('Nishad'),
                  accountEmail: const Text('nishadns321@gmail.com'),
                  currentAccountPicture: GestureDetector(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ImageDetails(image: profile),
                        ));
                      },
                      child: Hero(
                        tag: 'img',
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profile),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              ListTile(
                minLeadingWidth: 20,
                leading: const Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 20,
                ),
                onTap: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.white,
                textColor: Colors.black,
                title: const Text('Home'),
              ),
              Divider(),
              ListTile(
                minLeadingWidth: 20,
                leading: const Icon(
                  Icons.info,
                  color: Colors.black,
                  size: 20,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.white,
                textColor: Colors.black,
                title: const Text('About'),
              ),
              Divider(),
              ListTile(
                minLeadingWidth: 20,
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 20,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.white,
                textColor: Colors.black,
                title: const Text('Profile'),
              ),
              Divider(),
              ListTile(
                minLeadingWidth: 20,
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  print('list tile tapped');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                tileColor: Colors.red,
                textColor: Colors.white,
                title: const Text('Logout'),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ImageDetails extends StatelessWidget {
  const ImageDetails({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(tag: 'img', child: Image.asset(image)),
        ),
      ),
    );
  }
}

class BackImage extends StatelessWidget {
  const BackImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back)),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(tag: 'backImg', child: Image.network(image)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
