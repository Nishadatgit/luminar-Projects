import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> countries = ['India', 'Britian', 'Canada', 'USA'];
    final List<String> cities = ['Delhi', 'London', 'Vancouver', 'New York'];
    final List<String> population = [
      '19 mill',
      '8 mill',
      '2.4 mill',
      '8.1 mill'
    ];
    final List<String> imageUrls = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAhEGJENshdU6RCMct712lWyVymeEoSRo8iQ&usqp=CAU',
      'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9jaAp6RUZTCqFXibB8oyb85VURiW2cTTX7w&usqp=CAU',
      'https://images.pexels.com/photos/771881/pexels-photo-771881.jpeg?cs=srgb&dl=pexels-reynaldo-brigworkz-brigantty-771881.jpg&fm=jpg'
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Cities around world',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.grey[200]),
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Card(
                elevation: 5,
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  leading: Image.network(
                    imageUrls[index],
                    height: 200,
                    width: 80,
                  ),
                  title: Text(
                    cities[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Wrap(
                    direction: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Text(countries[index]),
                      Text('population :${population[index]}')
                    ],
                  ),
                ),
              ),
            );
          }, childCount: countries.length),
        ),
      ),
    );
  }
}
