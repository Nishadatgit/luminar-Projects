import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 210, 58, 47),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 18,
        ),
        title: const Text(
          'Order Details',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: [
              const OrderDetailsArea(),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const ItemList(),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const PaymentDetails(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  thickness: 1,
                ),
              ),
              const NeedSupport(),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top * 1.6),
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 246, 222, 6),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Re-order',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NeedSupport extends StatelessWidget {
  const NeedSupport({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 245, 239, 180),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      height: MediaQuery.of(context).size.height * 0.066,
      child: Row(
        children: [
          const Icon(
            Icons.question_mark_outlined,
            size: 15,
            color: Colors.red,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Need Support?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Chat with us',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Chat',
                style: TextStyle(color: Colors.red, fontSize: 12),
              ))
        ],
      ),
    );
  }
}

class OrderDetailsArea extends StatelessWidget {
  const OrderDetailsArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '#76623486545',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '27 may 2020',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const Text(
                'Delivered',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Delivered to',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '1633,Hampton Meados,Texas',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Payment method',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Google pay',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.16,
      child: Column(
        children: [
          ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            dense: true,
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Ocean Reach oatmeal x2',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            isThreeLine: false,
            subtitle: const Text('6 pack'),
            trailing: Wrap(
              spacing: 3,
              children: const [
                Text('\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('56.06'),
              ],
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            dense: true,
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Stone peak conditions x2 ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            isThreeLine: false,
            subtitle: const Text('Single'),
            trailing: Wrap(
              spacing: 3,
              children: const [
                Text('\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('56.06'),
              ],
            ),
          ),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            dense: true,
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Budwiser x1',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            isThreeLine: false,
            subtitle: const Text('6 pack'),
            trailing: Wrap(
              spacing: 3,
              children: const [
                Text('\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold)),
                Text('56.06'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Item Total',
                style: TextStyle(color: Colors.grey),
              ),
              Wrap(
                spacing: 3,
                children: const [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text('56.06'),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Delivery Charges',
                  style: TextStyle(color: Colors.grey)),
              Wrap(
                spacing: 3,
                children: const [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text('3.00'),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Donated to needy',
                  style: TextStyle(color: Colors.grey)),
              Wrap(
                spacing: 3,
                children: const [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text('1.06'),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Paid',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Wrap(
                spacing: 3,
                children: const [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Text('60.00'),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
