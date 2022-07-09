import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_sms/flutter_sms.dart';

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
              onPressed: () async {
                String message = 'hello';
                List<String> recp = ['989765', '7886656'];

                final result = await sendSMS(
                        message: message, recipients: recp, sendDirect: false)
                    .catchError((onError) {
                  print(onError);
                });
                print(result);
              },
              child: const Text('Send a sms using flutter sms'),
            ),
          ],
        ),
      ),
    );
  }
}
