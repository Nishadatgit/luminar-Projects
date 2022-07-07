import 'package:flutter/material.dart';

class PopularHotelsArea extends StatelessWidget {
  const PopularHotelsArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      margin: const EdgeInsets.only(top: 10),
      height: MediaQuery.of(context).size.height * 0.28,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            PopularHotelsCard(
              image: 'room',
              desc: 'A three star hotel in kakkanad',
              rate: '249',
              name: 'Crown Plaza',
            ),
            PopularHotelsCard(
              image: 'room1',
              desc: 'A four star hotel in Edappalli',
              rate: '350',
              name: 'Presidency',
            ),
            PopularHotelsCard(
              image: 'room2',
              desc: 'A five star hotel near LuluMall',
              rate: '900',
              name: 'Prince Hotel',
            ),
            PopularHotelsCard(
              image: 'room3',
              desc: 'A good conditioned 2bhk room',
              rate: '300',
              name: 'Kayaloram',
            ),
            PopularHotelsCard(
              image: 'room4',
              desc: 'A five star hotel',
              rate: '1000',
              name: 'Columbia',
            ),
          ],
        ),
      ),
    );
  }
}

class PopularHotelsCard extends StatelessWidget {
  const PopularHotelsCard({
    Key? key,
    required this.image,
    required this.desc,
    required this.rate,
    required this.name,
  }) : super(key: key);
  final String image;
  final String desc;
  final String rate;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: Container(
          height: 210,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/$image.jpg')),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  name,
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 10, right: 3),
                child: Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      '\$$rate / night',
                      style: const TextStyle(color: Colors.purple),
                    ),
                    const Spacer(),
                    const Text(
                      '4.5',
                      style: TextStyle(color: Colors.purple),
                    ),
                    const Icon(
                      Icons.star,
                      size: 17,
                      color: Colors.purple,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BookingTitleWidget extends StatelessWidget {
  const BookingTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}
