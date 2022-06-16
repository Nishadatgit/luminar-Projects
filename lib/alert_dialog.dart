import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertShower extends StatelessWidget {
  const AlertShower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            showAlertBox(context);
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}

void showAlertBox(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Do you want to exit?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text('Ok'),
            ),
            TextButton(onPressed: () {}, child: const Text('Cancel'))
          ],
        );
      });
}
