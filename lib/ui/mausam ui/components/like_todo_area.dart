import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeTodoArea extends StatelessWidget {
  const LikeTodoArea({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 5),
        height: size.height * 0.34,
        width: size.width,
        child: GridView(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10, mainAxisSpacing: 10, crossAxisCount: 3),
          children: [
            TodoCard(
              img: SvgPicture.asset(
                'assets/svg/account.svg',
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              text: 'My account',
            ),
            TodoCard(
              img: Image.asset(
                'assets/png/esewa.png',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              text: 'Load eSewa',
            ),
            TodoCard(
              img: SvgPicture.asset(
                'assets/svg/payment.svg',
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              text: 'payment',
            ),
            TodoCard(
              img: SvgPicture.asset(
                'assets/svg/fund_trnasfer2.svg',
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              text: 'Fund transfer',
            ),
            TodoCard(
              img: SvgPicture.asset(
                'assets/svg/schedule_payment.svg',
                color: Colors.red,
                height: 40,
                width: 40,
              ),
              text: 'Schedule payment',
            ),
            const TodoCard(
              img: Icon(
                Icons.qr_code_scanner,
                color: Colors.red,
                size: 50,
              ),
              text: 'Scan to pay',
            )
          ],
        ));
  }
}

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            img,
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
