import 'package:demo_project/assignments/custom_drawer/widgets/image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Image Gallery',
          style: GoogleFonts.aBeeZee(color: Colors.black),
        ),
      ),
      body: GridView.count(
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(19, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onLongPress: (() {
                showNetworkImagePopup(
                    context, 'https://picsum.photos/500/500?random=$index');
              }),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NetworkImageViewer(
                      image: 'https://picsum.photos/500/500?random=$index'),
                ));
              },
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://picsum.photos/500/500?random=$index'),
                        fit: BoxFit.cover)),
              ),
            ),
          );
        }),
      ),
    );
  }
}

Future<void> showNetworkImagePopup(BuildContext ctx, String image) async {
  showDialog(
      context: ctx,
      builder: (ctxx) {
        return GestureDetector(
          onTap: () {
            Navigator.of(ctxx).pop();
          },
          child: AlertDialog(
            title: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
            backgroundColor: Colors.transparent,
            content: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
          ),
        );
      });
}
