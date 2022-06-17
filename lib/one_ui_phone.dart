// import 'package:flutter/material.dart';

// class OneUiPhone extends StatelessWidget {
//   const OneUiPhone({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: Colors.black,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 40,
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(top: 150),
//                 child: Text(
//                   'Phone',
//                   style: TextStyle(color: Colors.white, fontSize: 35),
//                 ),
//               ),
//               Text(
//                 '10 contacts with phone number',
//                 style: TextStyle(color: Colors.grey[500]),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(right: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: const [
//                     Icon(
//                       Icons.add,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Icon(
//                       Icons.search,
//                       color: Colors.white,
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Icon(
//                       Icons.more_vert,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://www.bollywoodhungama.com/wp-content/uploads/2021/02/WhatsApp-Image-2021-02-22-at-9.12.41-PM.jpeg'),
//                     ),
//                     title: Text(
//                       'Nishad k',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                       child: Icon(
//                         Icons.star_border,
//                         color: Colors.white,
//                       ),
//                     ),
//                     title: Text(
//                       'Add your favourite contacts',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Row(
//                   children: const [
//                     Text(
//                       'Frequently Contacted',
//                       style: TextStyle(
//                           color: Colors.grey, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                         child: Text(
//                       'A',
//                       style: TextStyle(color: Colors.white),
//                     )),
//                     title: Text(
//                       'Amal',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                         child: Text(
//                       'A',
//                       style: TextStyle(color: Colors.white),
//                     )),
//                     title: Text(
//                       'Ashwaq',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                         child: Text(
//                       'B',
//                       style: TextStyle(color: Colors.white),
//                     )),
//                     title: Text(
//                       'Bijith',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Row(
//                   children: const [
//                     Text(
//                       'A',
//                       style: TextStyle(
//                           color: Colors.grey, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 10, right: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white.withOpacity(0.1)),
//                   child: const ListTile(
//                     leading: CircleAvatar(
//                         child: Text(
//                       'A',
//                       style: TextStyle(color: Colors.white),
//                     )),
//                     title: Text(
//                       'Ajwad',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
