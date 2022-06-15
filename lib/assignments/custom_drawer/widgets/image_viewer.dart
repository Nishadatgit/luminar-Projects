import 'package:flutter/material.dart';


class AssetImageViewer extends StatelessWidget {
  const AssetImageViewer({Key? key, required this.image}) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Hero(tag: 'img', child: Image.asset(image)),
        ),
      ),
    );
  }
}


class NetworkImageViewer extends StatelessWidget {
  const NetworkImageViewer({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back)),
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Hero(tag: 'backImg', child: Image.network(image)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
