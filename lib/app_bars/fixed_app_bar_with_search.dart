import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FixedAppBarWithSearch extends StatefulWidget {
  const FixedAppBarWithSearch({Key? key}) : super(key: key);

  @override
  State<FixedAppBarWithSearch> createState() => _FixedAppBarWithSearchState();
}

class _FixedAppBarWithSearchState extends State<FixedAppBarWithSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            title: const Text('Custom app bar'),
            centerTitle: true,
            actions: const [Icon(Icons.shop)],
            bottom: AppBar(
              title: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        // enabledBorder: InputBorder.none,
                        //disabledBorder: InputBorder.none,
                        isDense: true,
                        suffixIcon: Icon(Icons.camera_alt),
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search something',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
