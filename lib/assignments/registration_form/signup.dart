import 'package:demo_project/assignments/registration_form/login.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  Signup({Key? key}) : super(key: key);

  static const redColor = Color.fromARGB(255, 238, 24, 8);

  final _signupKey = GlobalKey<FormState>();

  final passwordField = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Icon(Icons.ac_unit),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 50, bottom: 50),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.normal,
                          offset: const Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 3,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[100]),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: _signupKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 30),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                size: 25,
                              ),
                              labelText: 'Full name',
                              isDense: true,
                              contentPadding: EdgeInsets.all(10)),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Required field';
                            } else if (value.contains(RegExp(r'[1-9]'))) {
                              return 'Enter a valid name';
                            }

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.email,
                                size: 25,
                              ),
                              labelText: 'Email',
                              isDense: true,
                              contentPadding: EdgeInsets.all(10)),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Required field';
                            } else if (EmailValidator.validate(value) ==
                                false) {
                              return 'Enter a valid email ';
                            }

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: passwordField,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                size: 20,
                              ),
                              icon: Icon(
                                Icons.key_outlined,
                                size: 25,
                              ),
                              contentPadding: EdgeInsets.all(10),
                              labelText: 'Password',
                              isDense: true),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Required field';
                            } else if (value.length < 4) {
                              return 'Password must contain minumum 4 characters';
                            }

                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          controller: confirmPassword,
                          decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                size: 20,
                              ),
                              icon: Icon(
                                Icons.key_outlined,
                                size: 25,
                              ),
                              labelText: 'Confirm password',
                              isDense: true,
                              contentPadding: EdgeInsets.all(10)),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 300,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: redColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                if (_checkSignupForm()) {
                                  if (checkPasswords(context)) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(signupSnackbar);
                                  }
                                }
                              },
                              child: const Text('Register')),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already registered?'),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: redColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool _checkSignupForm() {
    if (_signupKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  final signupSnackbar = const SnackBar(
    content: Text(
      'Account created Successfully',
      style: TextStyle(color: Colors.white),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: redColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    dismissDirection: DismissDirection.endToStart,
    clipBehavior: Clip.antiAlias,
  );

  final passSnack = const SnackBar(
    content: Text(
      'Password and confirm password does not match',
      style: TextStyle(color: Colors.white),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Color.fromARGB(255, 238, 24, 8),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );

  bool checkPasswords(BuildContext ctx) {
    final pass = passwordField.text;
    final confirmPass = confirmPassword.text;

    if (pass != confirmPass || pass == null || confirmPass == null) {
      ScaffoldMessenger.of(ctx).showSnackBar(passSnack);
      return false;
    } else {
      return true;
    }
  }
}
