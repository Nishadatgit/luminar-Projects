import 'package:flutter/material.dart';

PreferredSize appBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(70),
    child: SliverAppBar(
      pinned: true,
      snap: true,
      stretch: true,
      floating: true,
      elevation: 0,
      backgroundColor: Colors.grey[200],
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 30, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 15,
                ),
              ),
              Icon(
                Icons.calendar_month,
                color: Colors.black,
              ),
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
      title: const Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Text('My Diary',
            style: TextStyle(color: Colors.black, fontSize: 27)),
      ),
    ),
  );
}
