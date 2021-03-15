import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/data/img.dart';
import 'package:patiprecios_flutter/src/data/my_colors.dart';
import 'package:patiprecios_flutter/src/widget/my_text.dart';
import 'package:toast/toast.dart';

//void main() => runApp(MyApp());

class MyAppW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: ProfileDrawerSimpleRoute());
  }
}

class ProfileDrawerSimpleRoute extends StatefulWidget {
  ProfileDrawerSimpleRoute();

  @override
  ProfileDrawerSimpleRouteState createState() =>
      new ProfileDrawerSimpleRouteState();
}

class ProfileDrawerSimpleRouteState extends State<ProfileDrawerSimpleRoute> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext context;

  void onDrawerItemClicked(String name) {
    Navigator.pop(context);
    Toast.show(name + " Selected", context);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      scaffoldKey.currentState.openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    Widget widget = Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          title: new Text("Drawer Simple"),
          backgroundColor: Colors.lightGreen[500],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              if (scaffoldKey.currentState.isDrawerOpen) {
                scaffoldKey.currentState.openEndDrawer();
              } else {
                scaffoldKey.currentState.openDrawer();
              }
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ]),
      body: Scaffold(
        key: scaffoldKey,
        // TODO en el widget body tengo que incluir fragments para que navegue entre la lista del Drawer
        //  body: IncludeDrawerContent.get(context),
        //   drawer:
      ),
    );
    return widget;
  }
}
