import 'package:demo_project/ui/hotel/home/components/room_details_with_rating.dart';
import 'package:demo_project/ui/hotel/room_details/room_main.dart';
import 'package:flutter/material.dart';
import 'components/appbar.dart';
import 'components/cards_area.dart';

class HotelHome extends StatelessWidget {
  const HotelHome({Key? key}) : super(key: key);

  static final images = ['room', 'room1', 'room2', 'room3', 'room4'];
  static final ratings = [4.0, 4.0, 5.0, 2.0, 3.0];
  static final reviews = ['101', '203', '178', '45', '99'];
  static final prices = ['34', '45', '101', '55', '60'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const HotelAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                const HotelCardsArea(),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    itemCount: images.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          print('tapped');
                        },
                        child: RoomDetailsCardWithRating(
                          image: images[index],
                          rating: ratings[index],
                          review: reviews[index],
                          price: prices[index],
                        ),
                      );
                    })
              ]),
            )
          ],
        ),
      ),
    );
  }
}
