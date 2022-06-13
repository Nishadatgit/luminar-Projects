import 'package:demo_project/one_ui_phone.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginWithSplash extends StatelessWidget {
  const LoginWithSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userTextController = TextEditingController();
    final passTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 53, 94),
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 340,
                  width: 500,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 4, 53, 94), width: 3),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.2),
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
                        padding: const EdgeInsets.only(
                            top: 40, left: 8, right: 8, bottom: 8),
                        child: TextField(
                          controller: userTextController,
                          toolbarOptions:
                              const ToolbarOptions(copy: true, paste: true),
                          decoration: const InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            label: Text('Username'),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
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
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            label: Text('Password'),
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220, top: 20),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color.fromARGB(255, 4, 53, 94),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () {
                                final user = userTextController.text;
                                final pass = passTextController.text;
                                if (checkFields(user, pass) == true) {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const OneUiPhone(),
                                      ));
                                } else {
                                  makePopUp(context);
                                }
                              },
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
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
          ],
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
                  style: TextStyle(color: Colors.red, fontSize: 15),
                ),
                trailing: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 4, 53, 94),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(ctx).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 3.0),
      borderRadius: const BorderRadius.all(
          Radius.circular(5.0) //                 <--- border radius here
          ),
    );
  }
}
