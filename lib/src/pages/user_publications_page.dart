import 'dart:math';

import 'package:flutter/material.dart';

class UserPublications extends StatelessWidget {
  const UserPublications({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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

    //TODO:Terminar de arreglar el grid
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: _listItems
            .map((item) => Card(
                color: Colors.transparent,
                elevation: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'publication');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        )),
                  ),
                )))
            .toList(),
      ),
    );
  }
}
