import 'package:flutter/material.dart';

import 'package:telephony/telephony.dart';

class TelePhonyEg extends StatelessWidget {
  const TelePhonyEg({Key? key}) : super(key: key);

  static final Telephony telephony = Telephony.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Telefony',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow[100],
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await telephony.sendSms(to: '+917559009229', message: 'Hello');
              },
              child: const Text('send a sms'),
            ),
            ElevatedButton(
              onPressed: () async {
                await telephony.openDialer('7559009229');
              },
              child: const Text('open dialer'),
            )
          ],
        ),
      ),
    );
  }
}
