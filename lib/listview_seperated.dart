import 'package:flutter/material.dart';

class ListViewSeperated extends StatelessWidget {
  ListViewSeperated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> urls = [
      'https://m.economictimes.com/thumb/msid-91701535,width-1200,height-900,resizemode-4,imgsize-50956/mohanlal.jpg',
      'https://telugucinema.com/wp-content/uploads/2021/12/katrinakaifrajasthan.jpg'
    ];
    final List<String> names = ['Mohanlal', 'Kathrina kaif'];
    final List<String> phno = ['9896756758', '9868574563'];

    return Scaffold(
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              subtitle: Text(phno[index]),
              title: Text(names[index]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(urls[index]),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            if (index % 5 == 0) {
              return Container(
                child: const Center(
                  child: Text(
                    'yesterday',
                  ),
                ),
              );
            }
            return Divider();
          },
          itemCount: 2),
    );
  }
}
