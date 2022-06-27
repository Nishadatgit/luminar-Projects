import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewBottomSheet extends StatelessWidget {
  const NewBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('My App'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.teal),
              onPressed: () {
                bottomsheet(context);
              },
              child: const Text('Options')),
        ),
      ),
    );
  }

  bottomsheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        context: context,
        builder: (ctx) {
          return Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            height: 200,
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                ),
                ListTile(
                  leading: Icon(Icons.copy),
                  title: Text('Copy link'),
                ),
                ListTile(
                  leading: Icon(Icons.edit),
                  title: Text('Edit'),
                )
              ],
            ),
          );
        });
  }
}
