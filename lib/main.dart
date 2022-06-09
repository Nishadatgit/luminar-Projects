import 'package:demo_project/home_screen.dart';
import 'package:demo_project/listview_screen.dart';
import 'package:demo_project/one_ui_phone.dart';
import 'package:demo_project/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: OneUiPhone(),
    );
  }
}
