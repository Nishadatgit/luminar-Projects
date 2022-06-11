import 'package:demo_project/assignments/contact_book.dart';
import 'package:flutter/material.dart';

class TextFieldEg extends StatelessWidget {
  const TextFieldEg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userTextController = TextEditingController();
    final passTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Text Field'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 340,
              width: 500,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Let's Login",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 40, left: 8, right: 8, bottom: 8),
                    child: TextField(
                      autofocus: true,
                      controller: userTextController,
                      toolbarOptions: ToolbarOptions(copy: true, paste: true),
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        label: Text('Username'),
                        isDense: true,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: passTextController,
                      toolbarOptions:
                          const ToolbarOptions(copy: true, paste: false),
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        label: Text('Enter password'),
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220, top: 20),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          iconSize: 30,
                          hoverColor: Colors.pink,
                          onPressed: () {
                            final _user = userTextController.text;
                            final _pass = passTextController.text;
                            if (checkFields(_user, _pass) == true) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ContactBook(),
                                  ));
                            } else {
                              makePopUp(context);
                            }
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool checkFields(String uname, String psd) {
    String password = 'nishad';
    String username = 'nishad';

    if (uname != username || psd != password) {
      return false;
    } else {
      return true;
    }
  }

  makePopUp(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return SimpleDialog(
            title: const Text('Error'),
            children: [
              ListTile(
                leading: const Text(
                  'Incorrect username or password',
                  style: TextStyle(color: Colors.red, fontSize: 13),
                ),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          );
        });
  }
}
