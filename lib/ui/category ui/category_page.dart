import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  static const Color pColor = Color.fromARGB(255, 200, 66, 111);

  static const List<Map> articles = [
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "Does Dry is January Actually Improve Your Health?",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "Does Dry is January Actually Improve Your Health?",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "You do hire a designer to make something. You hire them.",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
    {
      "title": "How to Seem Like You Always Have Your Shot Together",
      "author": "Jonhy Vino",
      "time": "4 min read",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: appBarWithTabBar(),
        body: SafeArea(
          child: TabBarView(children: [
            ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                Map myArticle = articles[index];
                return MyCard(
                  pColor: pColor,
                  article: myArticle,
                );
              },
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.pink,
            ),
          ]),
        ),
      ),
    );
  }

  AppBar appBarWithTabBar() {
    return AppBar(
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ))
      ],
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.category,
        color: Colors.black,
      ),
      title: const Text(
        'Category',
        style: TextStyle(color: Colors.black),
      ),
      bottom: const TabBar(
          indicatorColor: pColor,
          labelColor: pColor,
          padding: EdgeInsets.all(0),
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          tabs: [
            Tab(
              text: 'For You',
            ),
            Tab(
              text: 'Design',
            ),
            Tab(
              text: 'Beauty',
            ),
            Tab(
              text: 'Education',
            ),
            Tab(
              text: 'Entertainment',
            ),
          ]),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.pColor,
    required this.article,
  }) : super(key: key);

  final Color pColor;

  final Map article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[300]!, width: 1)),
          ),
          Container(
            color: pColor,
            width: MediaQuery.of(context).size.width * 0.24,
            height: MediaQuery.of(context).size.height * 0.090,
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.155,
              width: MediaQuery.of(context).size.width * 0.27,
            ),
          ),
          Positioned(
            left: 25,
            top: 25,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.14,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 130,
            top: 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.090,
                    width: MediaQuery.of(context).size.width * 0.54,
                    color: Colors.white,
                    child: Text(
                      article["title"],
                      style: const TextStyle(
                          fontSize: 19,
                          wordSpacing: 5,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 90,
            right: 5,
            child: Container(
              padding: const EdgeInsets.only(top: 10, left: 10),
              height: MediaQuery.of(context).size.height * 0.070,
              width: MediaQuery.of(context).size.width * 0.58,
              color: Colors.white,
              child: Wrap(
                spacing: 0,
                direction: Axis.horizontal,
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: pColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      article["author"],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 15),
                    child: Text(
                      article["time"],
                      style: const TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
