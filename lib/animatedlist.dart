import 'package:flutter/material.dart';

class AnimatedListEg extends StatelessWidget {
  const AnimatedListEg({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children:
          List.generate(25, (i) => AnimatedListItem(i, key: ValueKey<int>(i))),
    ));
  }
}

class AnimatedListItem extends StatefulWidget {
  final int index;

  AnimatedListItem(this.index, {Key? key}) : super(key: key);

  @override
  _AnimatedListItemState createState() => _AnimatedListItemState();
}

class _AnimatedListItemState extends State<AnimatedListItem> {
  bool _animate = false;

  static bool _isStart = true;

  @override
  void initState() {
    super.initState();
    _isStart
        ? Future.delayed(Duration(milliseconds: widget.index * 100), () {
            setState(() {
              _animate = true;
              _isStart = false;
            });
          })
        : _animate = true;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 1000),
      opacity: _animate ? 1 : 0,
      curve: Curves.easeInOutQuart,
      child: AnimatedPadding(
        duration: Duration(milliseconds: 1000),
        padding: _animate
            ? const EdgeInsets.all(4.0)
            : const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.blue,
          constraints: BoxConstraints.expand(height: 100),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.index.toString(),
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
