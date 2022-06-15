import 'dart:math';

import 'package:demo_project/assignments/custom_drawer/screens/gallery_screen.dart';
import 'package:demo_project/assignments/custom_drawer/screens/import_screen.dart';
import 'package:demo_project/assignments/custom_drawer/screens/slideshow_screen.dart';
import 'package:demo_project/assignments/custom_drawer/screens/tools_screen.dart';
import 'package:demo_project/assignments/custom_drawer/widgets/image_viewer.dart';
import 'package:demo_project/assignments/custom_drawer/widgets/listtile_maker.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final String profile = 'assets/images/mypic.jpg';
  final backgroundImages = [
    'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
    'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',
    'https://cdn.pixabay.com/photo/2012/08/27/14/19/mountains-55067__340.png',
    'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg'
  ];
  late String currentBackgroundImage = backgroundImages[0];

  @override
  void initState() {
    currentBackgroundImage = backgroundImages[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[500],
        title: const Text('Home',style: TextStyle(color: Colors.white)),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.pink[500]),
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          NetworkImageViewer(image: currentBackgroundImage)));
                },
                onDoubleTap: () {
                  setState(() {
                    var rand = Random();
                    int imageNumber = rand.nextInt(backgroundImages.length);
                    currentBackgroundImage = backgroundImages[imageNumber];
                  });
                },
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AssetImageViewer(image: profile),
                      ));
                    },
                    child: Hero(
                      tag: 'img',
                      child: CircleAvatar(
                        backgroundImage: AssetImage(profile),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      opacity: 0.9,
                      image: NetworkImage(currentBackgroundImage),
                    ),
                  ),
                  accountName: const Text('Mohamed Nishad'),
                  accountEmail: const Text('nishad@gmail.com'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const MyListTile(
                  title: 'Home',
                  leadingIcon: Icon(Icons.home),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ImportScreen(),
                  ));
                },
                child: const MyListTile(
                  title: 'Import',
                  leadingIcon: Icon(Icons.login_outlined),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GalleryScreen(),
                  ));
                },
                child: const MyListTile(
                  title: 'Gallery',
                  leadingIcon: Icon(Icons.image),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SlideShowScreen(),
                  ));
                },
                child: const MyListTile(
                  title: 'Slideshow',
                  leadingIcon: Icon(Icons.video_collection),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ToolsScreen(),
                  ));
                },
                child: const MyListTile(
                  title: 'Tools',
                  leadingIcon: Icon(Icons.settings),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.white,
              ),
              const MyListTile(
                title: 'Share',
                leadingIcon: Icon(Icons.share),
              ),
              const MyListTile(
                title: 'Send',
                leadingIcon: Icon(Icons.send),
              )
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
