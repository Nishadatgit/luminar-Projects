import 'package:demo_project/alert_dialog.dart';
import 'package:demo_project/assignments/custom_drawer/screens/home.dart';
import 'package:demo_project/assignments/custom_listview.dart';
import 'package:demo_project/assignments/login_iu_custom_textfields.dart';
import 'package:demo_project/assignments/registration_form/login.dart';
import 'package:demo_project/assignments/registration_form/signup.dart';
import 'package:demo_project/assignments/custom_appbar.dart';
import 'package:demo_project/gridview.dart';
import 'package:demo_project/my%20works/drawer/screens/home.dart';
import 'package:demo_project/my%20works/registration_login/login.dart';
import 'package:demo_project/my%20works/registration_login/signup.dart';
import 'package:demo_project/home_screen.dart';
import 'package:demo_project/listview_builder.dart';
import 'package:demo_project/assignments/contact_book.dart';
import 'package:demo_project/listview_seperated.dart';
import 'package:demo_project/one_ui_phone.dart';
import 'package:demo_project/splash_screen.dart';
import 'package:demo_project/text_field.dart';
import 'package:demo_project/validation_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'my works/splash_screen_for_login.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const NavigationDrawer(),
    );
  }
}
