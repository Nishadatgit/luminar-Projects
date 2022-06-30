import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginHome extends StatelessWidget {
  LoginHome({Key? key}) : super(key: key);

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _semailController = TextEditingController();
  final _spassController = TextEditingController();
  final confpassController = TextEditingController();

  ValueNotifier indexNotifier = ValueNotifier(0);
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/room.jpg'),
              fit: BoxFit.cover,
              opacity: 0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 150, bottom: 20),
              child: Text('Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400)),
            ),
            const Text('Welcome to this awesome login app.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            const Text('You are awesome',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w400)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 21, 59, 91),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          indexNotifier.value = 0;
                          showpopup(context);
                        },
                        child: const Text('Login')),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          indexNotifier.value = 1;
                          showpopup(context);
                        },
                        child: const Text('Signup')),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 38,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.google,
                        color: Colors.white.withOpacity(0.9),
                        size: 17,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Continue with  google',
                            style:
                                TextStyle(color: Colors.white.withOpacity(0.8)),
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showpopup(BuildContext context) {
    return showDialog(
        context: context,
        builder: (ctxx) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.white.withOpacity(0.1),
              title: Row(
                children: [
                  ValueListenableBuilder(
                    valueListenable: indexNotifier,
                    builder: (ctx, newval, _) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: newval == 0
                                ? Colors.black
                                : Colors.transparent),
                        child: TextButton(
                            onPressed: () {
                              indexNotifier.value = 0;
                              indexNotifier.notifyListeners();
                            },
                            child: const Text('Login',
                                style: TextStyle(color: Colors.white))),
                      );
                    },
                  ),
                  ValueListenableBuilder(
                    valueListenable: indexNotifier,
                    builder: (ctx, newvalue, _) {
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: newvalue == 1
                                ? Colors.black
                                : Colors.transparent),
                        child: TextButton(
                          onPressed: () {
                            indexNotifier.value = 1;
                            indexNotifier.notifyListeners();
                          },
                          child: const Text(
                            'Signup',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.of(ctxx).pop();
                      },
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                        color: Color.fromARGB(255, 181, 38, 27),
                      ))
                ],
              ),
              content: ValueListenableBuilder(
                valueListenable: indexNotifier,
                builder: (BuildContext ctx, dynamic newval, Widget? _) {
                  return newval == 0
                      ? LoginPopup(
                          emailController: _emailController,
                          passController: _passController)
                      : SignupPopup(
                          emailController: _semailController,
                          passController: _spassController,
                          confpassController: confpassController,
                        );
                },
                // child: index == 0
              ));
        });
  }
}

class LoginPopup extends StatelessWidget {
  const LoginPopup({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController passController,
  })  : _emailController = emailController,
        _passController = passController,
        super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(),
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 40,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                controller: _emailController,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter your Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                obscureText: true,
                controller: _passController,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter your Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
                width: 230,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}

class SignupPopup extends StatelessWidget {
  const SignupPopup({
    Key? key,
    required TextEditingController emailController,
    required TextEditingController passController,
    required this.confpassController,
  })  : _emailController = emailController,
        _passController = passController,
        super(key: key);

  final TextEditingController _emailController;
  final TextEditingController _passController;
  final TextEditingController confpassController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 40,
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                controller: _emailController,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter your Name',
                  hintStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                obscureText: true,
                controller: _passController,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Enter your Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                obscureText: true,
                controller: confpassController,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: 'Confirm your Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Container(
                width: 230,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Signup',
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}

//animatedswitcher
