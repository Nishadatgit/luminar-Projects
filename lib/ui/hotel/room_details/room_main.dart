import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RoomMainPage extends StatelessWidget {
  const RoomMainPage({Key? key}) : super(key: key);

  static const String description =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)";

  static const Color pColor = Color.fromARGB(255, 49, 20, 168);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const ImageStack(),
          Column(
            children: const [
              RatingAndPrice(pColor: pColor),
              BookNowButton(pColor: pColor),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 270.0),
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Description(description: description)
            ],
          ),
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
          child: Text(
            description,
            maxLines: 12,
            softWrap: true,
            style: const TextStyle(
                fontSize: 15, wordSpacing: 3, letterSpacing: 0.3),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}

class BookNowButton extends StatelessWidget {
  const BookNowButton({
    Key? key,
    required this.pColor,
  }) : super(key: key);

  final Color pColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        color: pColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: const Text(
        'Book Now',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class RatingAndPrice extends StatelessWidget {
  const RatingAndPrice({
    Key? key,
    required this.pColor,
  }) : super(key: key);

  final Color pColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 22,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(Icons.star, color: pColor),
                onRatingUpdate: (rating) {},
              ),
              Text(
                '\$200',
                style: TextStyle(
                    color: pColor, fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.horizontal,
                spacing: 3,
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 17,
                    color: Colors.grey,
                  ),
                  Text(
                    '8km to Lulu Mall',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              const Text(
                '/per night',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  opacity: 0.8,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/room.jpg'))),
          height: MediaQuery.of(context).size.height * 0.47,
          width: MediaQuery.of(context).size.width,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 70.0),
          child: Text(
            'DETAILS',
            style: TextStyle(color: Colors.white, fontSize: 17),
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
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
