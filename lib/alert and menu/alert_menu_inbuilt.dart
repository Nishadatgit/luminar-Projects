import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AlertAndMenu extends StatelessWidget {
  const AlertAndMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              itemBuilder: (ctx) => [
                    PopupMenuItem(
                        child: Row(
                      children: const [Icon(Icons.add), Text('Add')],
                    ))
                  ])
        ],
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showSimpleAlert(context);
                },
                child: const Text('show simple alert')),
            ElevatedButton(
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.warning,
                    title: "RFLUTTER ALERT",
                    desc: "Flutter is more awesome with RFlutter Alert.",
                    buttons: [
                      DialogButton(
                        child: const Text(
                          "FLAT",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                      ),
                      DialogButton(
                        child: Text(
                          "GRADIENT",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(116, 116, 191, 1.0),
                          Color.fromRGBO(52, 138, 199, 1.0)
                        ]),
                      )
                    ],
                  ).show();
                },
                child: const Text('show rflutter alert')),
            ElevatedButton(
                onPressed: () {
                  InfoAlertBox(
                    context: context,
                  );
                },
                child: const Text('show awesome dialog alert')),
          ],
        ),
      ),
    );
  }

  void showSimpleAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: const Text('Warning'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'))
            ],
          );
        });
  }
}
