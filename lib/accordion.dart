import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';


class MyAccordion extends StatelessWidget {
  const MyAccordion({Key? key}) : super(key: key);
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accordion'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Accordion(
                maxOpenSections: 1,

                // headerTextStyle: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
                leftIcon: const Icon(Icons.audiotrack, color: Colors.white),
                children: [
                  AccordionSection(
                    isOpen: false,
                    // flipRightIconIfOpen: false,
                    header: const Text(
                      'Introduction',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    content:
                        const Text('This is the introduction right here ...'),
                  ),
                  AccordionSection(
                      isOpen: false,
                      header: const Text('About Us',
                          style: TextStyle(color: Colors.white, fontSize: 17)),
                      content: Image.asset('assets/images/mypic.jpg')),
                  AccordionSection(
                    isOpen: false,
                    header: const Text('Company Info',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    content:
                        Icon(Icons.airplay, size: 70, color: Colors.green[200]),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                    header: Text('Company Info', style: _headerStyle),
                    content: DataTable(
                      sortAscending: true,
                      sortColumnIndex: 1,
                      dataRowHeight: 40,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                            label: Text('ID', style: _contentStyleHeader),
                            numeric: true),
                        DataColumn(
                            label: Text('Description',
                                style: _contentStyleHeader)),
                        DataColumn(
                            label: Text('Price', style: _contentStyleHeader),
                            numeric: true),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            DataCell(Text('1',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(
                                Text('Fancy Product', style: _contentStyle)),
                            DataCell(Text(r'$ 199.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('2',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(
                                Text('Another Product', style: _contentStyle)),
                            DataCell(Text(r'$ 79.00',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('3',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(Text('Really Cool Stuff',
                                style: _contentStyle)),
                            DataCell(Text(r'$ 9.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('4',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(Text('Last Product goes here',
                                style: _contentStyle)),
                            DataCell(Text(r'$ 19.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
