import 'package:flutter/material.dart';

class ContactBook extends StatelessWidget {
  const ContactBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ListTile(
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
            ),
            subtitle: const Text('10 records'),
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Contacts',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: TextFormField(
              
              controller: _textController,
              decoration: InputDecoration(
                
                suffixIcon: const Icon(
                  Icons.mic,
                  size: 25,
                  color: Colors.grey,
                ),
                contentPadding: const EdgeInsets.all(12),
                isDense: true,
                hintText: 'Search contacts',
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://m.economictimes.com/thumb/msid-91701535,width-1200,height-900,resizemode-4,imgsize-50956/mohanlal.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Mohanlal'),
                      subtitle: const Text('9895678456'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://telugucinema.com/wp-content/uploads/2021/12/katrinakaifrajasthan.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Kathrina kaif'),
                      subtitle: const Text('8956785467'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/original/ytwRvy53dH9KrpTcZu5GsNi4HnE.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Thamanna '),
                      subtitle: const Text('7895567445'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://filmfare.wwmindia.com/content/2022/mar/tigershroff11648127348.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Tiger Shroff '),
                      subtitle: const Text('7595678434'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://i2.cinestaan.com/image-bank/1500-1500/178001-179000/178973.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Darshan Raval '),
                      subtitle: const Text('8995678477'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://m.media-amazon.com/images/M/MV5BNGU0Y2FiODUtZmFlYi00NDgyLTlkYmItNzJlN2FkYjNkMzJjXkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Fahad Fazil '),
                      subtitle: const Text('8995678477'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://images.indianexpress.com/2020/06/Tovino-Thomas-1200.jpg'),
                      ),
                      trailing: Wrap(
                        children: const [
                          Icon(
                            Icons.message,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.call,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Colors.blue,
                          )
                        ],
                      ),
                      title: const Text('Tovino Thomas '),
                      subtitle: const Text('8995678477'),
                    ),
                    const Divider(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
