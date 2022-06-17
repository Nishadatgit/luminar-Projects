// import 'dart:async';
// import 'package:lottie/lottie.dart';
// import 'package:demo_project/home_screen.dart';
// import 'package:demo_project/assignments/contact_book.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(
//       const Duration(seconds: 3),
//       () => Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const ContactBook(),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: const Center(
//           child: Icon(
//         Icons.phone,
//         size: 100,
//       )),
//     );
//   }
// }

// class ScreenHome extends StatelessWidget {
//   const ScreenHome({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const Icon(
//           Icons.home,
//           size: 20,
//         ),
//         title: const Text(
//           'Demo App',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Container(
//         width: 50,
//         height: 50,
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           child: Text('GO back'),
//         ),
//       ),
//     );
//   }
// }


// // import 'package:demo_project/home_screen.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:splashscreen/splashscreen.dart';

// // class Splash extends StatefulWidget {
// //   const Splash({Key? key}) : super(key: key);

// //   @override
// //   State<Splash> createState() => _SplashState();
// // }

// // class _SplashState extends State<Splash> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SplashScreen(
// //       seconds: 3,
// //       navigateAfterSeconds: HomeScreen2(),
// //     );
// //   }
// // }
