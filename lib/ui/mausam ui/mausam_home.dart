import 'package:flutter/material.dart';

import 'components/like_todo_area.dart';
import 'components/profile_stack.dart';
import 'components/title_area.dart';

class MausamHome extends StatelessWidget {
  const MausamHome({Key? key}) : super(key: key);
  static const Color red = Color.fromARGB(255, 206, 26, 13);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 19, 129, 219),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'welcome! ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            Text(
              'MAUSAM',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileStack(size: size),
            TitleArea(
              size: size,
              text: 'would you like to?',
              icon: Icons.group_work,
            ),
            const SizedBox(
              height: 10,
            ),
            LikeTodoArea(size: size),
            TitleArea(
              size: size,
              text: 'last transactions',
              icon: Icons.group_work,
            ),
            TransactionTile(size: size, red: red),
            TransactionTile(size: size, red: red),
            TransactionTile(size: size, red: red)
          ],
        ),
      ),
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    Key? key,
    required this.size,
    required this.red,
  }) : super(key: key);

  final Size size;
  final Color red;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: size.height * 0.1,
          width: size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 10,
                decoration: BoxDecoration(
                    color: red,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'cwdr/'.toUpperCase(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '342253546767',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            children: const [
                              Text(
                                'NPR.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' 1,0000.00',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '22-10-2022',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
