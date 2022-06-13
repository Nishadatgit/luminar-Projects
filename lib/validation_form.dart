import 'package:demo_project/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ValidationForm extends StatelessWidget {
  ValidationForm({Key? key}) : super(key: key);

  final blueColor = const Color.fromARGB(255, 4, 53, 94);

  final _form = GlobalKey<FormState>();

  bool _checkForm() {
    final isValid = _form.currentState!.validate();

    if (isValid) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: const Text(
          'Form Validator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: _form,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 180,
              ),
              const Center(
                child: Text(
                  'Login Form',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null ||
                      !(value.contains('@')) ||
                      value.isEmpty) {
                    return 'Enter a valid email address';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || !(value.length > 5) || value.isEmpty) {
                    return 'Enter a valid password';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: blueColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {
                  if (_checkForm()) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenHome(),
                    ));
                  } else {
                    final snack = SnackBar(
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                        textColor: Colors.white,
                      ),
                      content: const Text(
                        'Error occured',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: blueColor,
                      behavior: SnackBarBehavior.floating,
                      elevation: 6.0,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  }
                },
                child: const Text('Login'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text('Not a user? Signup now!')),
            ],
          ),
        ),
      ),
    );
  }
}
