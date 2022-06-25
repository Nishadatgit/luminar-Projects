import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_animations/stateless_animation/custom_animation.dart';

class MyAnimationsEg extends StatefulWidget {
  const MyAnimationsEg({Key? key}) : super(key: key);

  @override
  State<MyAnimationsEg> createState() => _MyAnimationsEgState();
}

class _MyAnimationsEgState extends State<MyAnimationsEg> {
  CustomAnimationControl control = CustomAnimationControl.play;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomAnimation<double>(
          control: control, // bind state variable to parameter
          tween: Tween(begin: -100.0, end: 100.0),
          duration: Duration(milliseconds: 100),
          builder: (context, child, value) {
            return Transform.translate(
              // animation that moves childs from left to right
              offset: Offset(value, 0),
              child: child,
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                focusElevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                // there is a button
                color: Colors.blue,
                onPressed:
                    toggleDirection, // clicking button changes animation direction
                child: const Text('Click me !'),
              ),
             const Text('haha')
            ],
          ),
        ),
      ),
    );
  }

  void toggleDirection() {
    // toggle between control instructions
    setState(() {
      control = (control == CustomAnimationControl.play)
          ? CustomAnimationControl.playReverse
          : CustomAnimationControl.play;
    });
  }
}
