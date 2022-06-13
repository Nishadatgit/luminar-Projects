import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class LoginUiWithCustomTextFields extends StatelessWidget {
  const LoginUiWithCustomTextFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userTextController = TextEditingController();
    final passTextController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/images/dev coffee.JPG',
                height: 230,
              ),
            ),
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
                              onPressed: () {},
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
}
