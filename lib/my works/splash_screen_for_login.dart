import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import 'login_page_with_splash.dart';

class SplashForLogin extends StatefulWidget {
  const SplashForLogin({Key? key}) : super(key: key);

  @override
  State<SplashForLogin> createState() => _SplashForLoginState();
}

class _SplashForLoginState extends State<SplashForLogin> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const LoginWithSplash(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset('assets/lottie/paperplane.json'),
            const Text(
              "We're on it...!",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 40, 105)),
            ),
          ],
        ),
      ),
    );
  }
}
