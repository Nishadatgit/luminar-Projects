import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
        leading: const Icon(Icons.person),
      ),
      body: const StudentTable(),
    );
  }
}

// class StudentData extends StatelessWidget {
//   const StudentData({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
//       child: Container(
//         height: 300,
//         decoration: BoxDecoration(
//             border: Border.all(
//                 color: const Color.fromARGB(255, 54, 3, 20), width: 5),
//             borderRadius: BorderRadius.circular(10)),
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text(
//                     'Students',
//                     style: TextStyle(fontSize: 30),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   Text(
//                     'RollNo',
//                     style: TextStyle(color: Colors.grey, fontSize: 15),
//                   ),
//                   Text(
//                     'Name',
//                     style: TextStyle(color: Colors.grey, fontSize: 15),
//                   ),
//                   Text(
//                     'Class',
//                     style: TextStyle(color: Colors.grey, fontSize: 15),
//                   )
//                 ],
//               ),
//               const Divider(
//                 thickness: 5,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [Text('1'), Text('Arya'), Text('6')],
//               ),
//               const Divider(
//                 thickness: 5,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [Text('12'), Text('Jhon'), Text('6')],
//               ),
//               const Divider(
//                 thickness: 5,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [Text('42'), Text('Tony'), Text('8')],
//               ),
//               const Divider(
//                 thickness: 5,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class StudentTable extends StatelessWidget {
  const StudentTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        height: 200,
        width: 300,
        child: DataTable(
            columnSpacing: 20,
            sortAscending: false,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.circular(10),
            ),
            columns: const [
              DataColumn(
                label: Text('RollNo'),
              ),
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Class'),
              ),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(
                  Text('1'),
                ),
                DataCell(
                  Text('Nishad'),
                ),
                DataCell(Text('10'))
              ]),
              DataRow(cells: [
                DataCell(
                  Text('2'),
                ),
                DataCell(
                  Text('Sidhu'),
                ),
                DataCell(Text('11'))
              ]),
              DataRow(cells: [
                DataCell(
                  Text('3'),
                ),
                DataCell(
                  Text('Ajwad'),
                ),
                DataCell(Text('12'))
              ])
            ]),
      ),
    );
  }
}
