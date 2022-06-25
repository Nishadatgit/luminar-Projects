// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Container(
        color: Color(0xff252525),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.43,
        child: Column(children: [
          Container(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: Text('1'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    child: Text('2'),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.grey,
                    child: Text('3'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
              child: Row(
                children:const [
                  Flexible(fit: FlexFit.tight, child: Text('A')),
                  Expanded(child: Text('B')),
                  Text('C')
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
