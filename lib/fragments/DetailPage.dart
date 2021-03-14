import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  String item;

  DetailPage(item) {
    this.item = item;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Image.asset(item.toString()),
          ),
        ),
      ),
    );
  }
}
