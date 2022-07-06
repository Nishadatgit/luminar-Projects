import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomMainPage extends StatelessWidget {
  const RoomMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/room.jpg'))),
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  'DETAILS',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              Positioned(
                top: 260,
                right: 178,
                child: Container(
                  height: 50,
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Crown plaza',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Text(
                        'Kochi, Kerala',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
