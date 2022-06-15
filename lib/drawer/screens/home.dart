import 'package:demo_project/drawer/screens/about.dart';
import 'package:demo_project/drawer/screens/profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  String profile = 'assets/images/avatar.png';
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
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white.withOpacity(0.2)),
        child: Drawer(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                margin: const EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    opacity: 0.8,
                    image: NetworkImage(
                        'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
                  ),
                ),
                accountName: const Text('Nishad'),
                accountEmail: const Text('nishadns321@gmail.com'),
                currentAccountPicture: GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/insta_dp.jpg'),
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
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => NavigationDrawer(),
                  // ));
                },
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
