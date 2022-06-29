import 'package:flutter/material.dart';

class FarmersCategory extends StatelessWidget {
  const FarmersCategory({
    Key? key,
  }) : super(key: key);
  static const List<String> names = [
    'Vegetables',
    'Fruits',
    'Exotic',
    'Fresh Cuts',
    'Nutrition Chargers',
    'Packed Flavours'
  ];
  static const List<String> images = [
    'assets/images/vegetables.jpg',
    'assets/images/fruits.jpg',
    'assets/images/exotic.jpg',
    'assets/images/freshcuts.jpg',
    'assets/images/nutrition.jpg',
    'assets/images/flavours.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Shop By Category',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            GridView.builder(
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  crossAxisCount: 3,
                ),
                itemBuilder: (ctx, index) {
                  return FarmersCard(
                    image: images[index],
                    txt: names[index],
                  );
                })
          ],
        ),
      ),
    );
  }
}

class FarmersCard extends StatelessWidget {
  const FarmersCard({
    Key? key,
    required this.image,
    required this.txt,
  }) : super(key: key);
  final String image;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.4), offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.circular(10)),
      width: 110,
      height: 130,
      child: Column(
        children: [
          Expanded(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              fit: BoxFit.fitHeight,
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 12.5),
          )
        ],
      ),
    );
  }
}
