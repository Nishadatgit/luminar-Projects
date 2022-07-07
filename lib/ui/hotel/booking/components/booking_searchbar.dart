import 'package:flutter/material.dart';

class BookingSearchBar extends StatelessWidget {
  const BookingSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(2, 7),
                  color: Colors.grey[400]!,
                  blurRadius: 3)
            ]),
        child: TextField(
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey[400],
            ),
            filled: true,
            enabled: true,
            hintText: 'Search for hotel ',
            hintStyle: const TextStyle(color: Colors.grey),
            fillColor: Colors.white,
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
