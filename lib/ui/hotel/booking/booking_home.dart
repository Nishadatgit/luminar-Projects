import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/booking_appbar.dart';
import 'components/booking_searchbar.dart';
import 'components/hotel_packages.dart';
import 'components/popular_hotels.dart';

class BookingHome extends StatefulWidget {
  const BookingHome({Key? key}) : super(key: key);

  @override
  State<BookingHome> createState() => _BookingHomeState();
}

class _BookingHomeState extends State<BookingHome> {
  static final images = ['room1', 'room2', 'room3', 'room4', 'room'];
  static final prices = ['1000', '1200', '300', '550', '600'];
  static final titles = [
    'Crown Plaza',
    'Hotel Taj',
    'Presidency',
    'Columbus',
    'Kayaloram'
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const BookingAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const BookingSearchBar(),
              const BookingTitleWidget(
                title: 'Popular Hotels',
              ),
              const PopularHotelsArea(),
              const HotelPackageTitle(),
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: images.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return HotelPackagesCard(
                      image: images[index],
                      rate: prices[index],
                      name: titles[index],
                    );
                  }),
              const SizedBox(
                height: 30,
              ),
            ]),
          )
        ],
      ),
      bottomNavigationBar: hotelBookingBottomNavigationBar(),
    );
  }

  BottomNavigationBar hotelBookingBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Serach'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_rounded), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]);
  }
}
