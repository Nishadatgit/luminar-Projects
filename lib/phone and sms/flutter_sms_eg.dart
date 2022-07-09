import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FlutterSmsEg extends StatelessWidget {
  const FlutterSmsEg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: const Text('Flutter sms'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Send a sms using flutter sms'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('open dialer using flutter sms'),
            )
          ],
        ),
      ),
    );
  }
}
