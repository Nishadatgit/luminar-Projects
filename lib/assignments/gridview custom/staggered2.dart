import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_date/random_date.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Stagg extends StatelessWidget {
  Stagg({Key? key}) : super(key: key);

  final List<String> images = [
    'https://images.unsplash.com/photo-1653656091256-3caf051d9565?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655411439249-6a72181b4bb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    'https://images.unsplash.com/photo-1655317175238-b59bf8eb0469?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655395340958-1c2a24c9742a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=432&q=80',
    'https://images.unsplash.com/photo-1655338535123-1a552c71cb03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655414973327-20d028adb728?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1653656120539-dba95a8e0d01?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655365225178-b1b4c59cbdb2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1655322974108-b997c6e2e24d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1655370164710-30356ab5cdb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=326&q=80',
    'https://images.unsplash.com/photo-1653656088789-16521b1fa03d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
    'https://images.unsplash.com/photo-1655402709998-ac885a8ff4c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'
  ];
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Galleria ',
              style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          elevation: 0,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: StaggeredGridView.countBuilder(
            shrinkWrap: true,
            reverse: false,
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 10,
            itemCount: images.length,
            crossAxisCount: 4,
            itemBuilder: (ctx, index) {
              return Container(
                height: index.isEven ? 300 : 500,
                decoration: const BoxDecoration(color: Colors.white),
                margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 5),
                        child: Image.network(
                          images[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 10),
                      child: Text(
                        'Details...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              );
            },
            staggeredTileBuilder: (_) {
              return const StaggeredTile.fit(2);
            }),
      ),
    );
  }
}
