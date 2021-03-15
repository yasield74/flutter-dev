import 'dart:math';

import 'package:flutter/material.dart';
import '../fragments/DetailPage.dart';

class LocationFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<LocationFragment> {
  final rnd = new Random();

  final List<String> _listItems = [
    'assets/images/image_1.jpg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_6.jpg',
    'assets/images/image_7.jpg',
    'assets/images/image_8.jpg',
    'assets/images/image_9.jpg',
  ];

  void pushRoute(BuildContext context, item) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => DetailPage(item)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: SafeArea(
            child: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: _listItems
          .map((item) => Card(
              color: Colors.transparent,
              elevation: 0,
              child: Hero(
                tag: '${item.toString()}',
                child: GestureDetector(
                  onTap: () => pushRoute(context, item),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              )))
          .toList(),
    )));
  }
}
