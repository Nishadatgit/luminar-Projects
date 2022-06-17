// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class ListViewBuilder extends StatelessWidget {
//   const ListViewBuilder({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final myList = List.generate(10, (index) => 'product of $index');
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ListView.builder(
//             itemCount: myList.length,
//             itemBuilder: (ctx, index) {
//               return Padding(
//                 padding: const EdgeInsets.only(
//                     left: 10, right: 10, bottom: 10, top: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.black.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://www.bollywoodhungama.com/wp-content/uploads/2021/02/WhatsApp-Image-2021-02-22-at-9.12.41-PM.jpeg'),
//                     ),
//                     title: Text(
//                       'Nishad k',
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                 ),
//               );
//             }),
//       ),
//     );
//   }
// }
