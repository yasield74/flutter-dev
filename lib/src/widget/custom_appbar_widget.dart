import 'package:flutter/material.dart';
import 'package:patiprecios/src/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  final Size preferredSize; // default is 56.0
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Provider.of<UiProvider>(context);

    return AppBar(
      title: Text('Holaaa'),
      leading: Container(
        height: 120.0,
        color: Colors.red,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/photo_female_1.jpg'),
        ),
      ),
    );
  }
}
