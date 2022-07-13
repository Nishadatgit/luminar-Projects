import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RoomDetailsCardWithRating extends StatelessWidget {
  const RoomDetailsCardWithRating({
    Key? key,
    required this.image,
    required this.rating,
    required this.review,
    required this.price,
    required this.title,
  }) : super(key: key);
  final String image;
  final double rating;
  final String review;
  final String price;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/$image.jpg'),
                  ),
                ),
              ),
              Positioned(
                top: 130,
                left: 300,
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 40,
                  color: Colors.grey[200],
                  child: Text(
                    '\$$price',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                left: 300,
                child: IconButton(
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'kakkanad, Kochi',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0, top: 10),
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemSize: 22,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 64, 171, 68),
                  ),
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '($review Reviews)',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
