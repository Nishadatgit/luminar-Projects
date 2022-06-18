import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_date/random_date.dart';

class MyCustomGridView extends StatelessWidget {
  MyCustomGridView({Key? key}) : super(key: key);

  final List titles = [
    "Harry",
    "Ross",
    "Bruce",
    "Cook",
    "Carolyn",
    "Morgan",
    "Albert",
    "Walker",
    "Randy",
    "Reed",
    "Larry",
    "Barnes",
    "Lois",
    "Wilson",
    "Jesse",
    "Campbell",
    "Ernest",
    "Rogers",
    "Theresa",
    "Patterson",
  ];

  final List<String> images = [
    'https://images.unsplash.com/photo-1655370164710-30356ab5cdb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
    'https://images.unsplash.com/photo-1655317175238-b59bf8eb0469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655395340958-1c2a24c9742a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=432&q=80',
    'https://images.unsplash.com/photo-1655338535123-1a552c71cb03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1653656091256-3caf051d9565?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655411439249-6a72181b4bb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    'https://images.unsplash.com/photo-1655317175238-b59bf8eb0469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655395340958-1c2a24c9742a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=432&q=80',
    'https://images.unsplash.com/photo-1655338535123-1a552c71cb03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1653656120539-dba95a8e0d01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655365225178-b1b4c59cbdb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1655322974108-b997c6e2e24d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655370164710-30356ab5cdb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
    'https://images.unsplash.com/photo-1653656088789-16521b1fa03d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655402709998-ac885a8ff4c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Gallery',
          style: GoogleFonts.aladin(fontSize: 25),
        ),
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        leadingWidth: 20,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.teal[500]),
        child: GridView.extent(
          //If the scroll view does not shrink wrap, then the scroll view will expand to the maximum allowed size in the scrollDirection. If the scroll view has unbounded constraints in the scrollDirection, then shrinkWrap must be true.
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 0,
          childAspectRatio: 0.5,
          mainAxisSpacing: 0,
          children: List.generate(images.length, (index) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.only(
                  top: 10, left: 15, right: 15, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      titles[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      RandomDate.withStartYear(2010).random().toString(),
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, bottom: 10, top: 3),
                    child: Text(
                      'See more..',
                      style: TextStyle(color: Colors.grey[800]),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
