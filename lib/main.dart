import 'package:demo_project/assignments/custom_listview.dart';
import 'package:demo_project/home_screen.dart';
import 'package:demo_project/listview_builder.dart';
import 'package:demo_project/assignments/contact_book.dart';
import 'package:demo_project/listview_seperated.dart';
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
      home: const ContactBook(),
    );
  }
}
