import 'package:flutter/material.dart';

class HotelAppBar extends StatelessWidget {
  const HotelAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: true,
      snap: true,
      backgroundColor: const Color.fromARGB(255, 34, 171, 178),
      leading: const Icon(Icons.menu),
      elevation: 0,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: const [
              // Text(
              //   'Type your Location',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 23,
              //       fontWeight: FontWeight.w500),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 23,
                      color: Colors.grey,
                    ),
                    filled: true,
                    enabled: true,
                    hintText: 'Kochi,Kerala',
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
