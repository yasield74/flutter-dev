import 'dart:math';

import 'package:flutter/material.dart';

class CercaPage extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                      onTap: () {
                        print('click widget');
                      },
                      child: Container(
                          padding: EdgeInsets.only(left: 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover,
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Nombre del producto',
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '99.999',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        print('click boton');
                                      })
                                ],
                              )
                            ],
                          )),
                    ),
                  )))
              .toList(),
        ));
  }
}
