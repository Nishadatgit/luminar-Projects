import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  ImageStack({
    Key? key,
    required this.room,
  }) : super(key: key);
  final selected = ValueNotifier(false);
  final String room;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              opacity: 0.8,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/$room.jpg'),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.47,
          width: MediaQuery.of(context).size.width,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 70.0),
          child: Text(
            'DETAILS',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 55.0, right: 350),
          child: IconButton(
            iconSize: 17,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Positioned(
          bottom: 40,
          left: 20,
          child: Container(
            height: 60,
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Crown plaza',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Kochi, Kerala',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 9,
          left: 20,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 30,
            width: 150,
            child: Text(
              '8.4/85 Reviews',
              style: TextStyle(color: Colors.grey[100]),
            ),
          ),
        ),
        Positioned(
          right: 3,
          bottom: 3,
          child: IconButton(
            onPressed: () {
              selected.value = !selected.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: selected,
              builder: (ctx, newval, _) {
                return newval == false
                    ? const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )
                    : const Icon(
                        Icons.favorite_rounded,
                        color: Colors.white,
                      );
              },
            ),
          ),
        )
      ],
    );
  }
}
