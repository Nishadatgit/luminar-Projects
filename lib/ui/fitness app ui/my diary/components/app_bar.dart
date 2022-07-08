import 'package:flutter/material.dart';

PreferredSize appBar(Color color,double fontsize) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: SliverAppBar(
      pinned: true,
      snap: true,
      stretch: true,
      floating: true,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
      ),
      backgroundColor: color,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 30, top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Icon(Icons.calendar_month, color: Colors.black, size: 15),
              Text(
                '15 May',
                style: TextStyle(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
            ],
          ),
        ),
      ],
      title:  Padding(
        padding:const EdgeInsets.only(top: 20.0, bottom: 20),
        child: Text(
          'My Diary',
          style: TextStyle(color: Colors.black, fontSize: fontsize),
        ),
      ),
    ),
  );
}
