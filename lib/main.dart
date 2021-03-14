import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/data/img.dart';
import 'package:patiprecios_flutter/data/my_colors.dart';
import 'package:patiprecios_flutter/included/include_drawer_content.dart';
import 'package:patiprecios_flutter/widget/my_text.dart';
import 'package:patiprecios_flutter/widget/toolbar.dart';
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
        drawer: Container(
          color: Colors.white,
          child: Drawer(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    color: MyColors.grey_5,
                    child: Column(
                      children: <Widget>[
                        Container(height: 20),
                        CircleAvatar(
                          radius: 42,
                          backgroundColor: MyColors.grey_60,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage(Img.get("photo_male_7.jpg")),
                          ),
                        ),
                        Container(height: 15),
                        Text("Andy Hernandez",
                            style: MyText.title(context)
                                .copyWith(color: MyColors.grey_90)),
                        Container(height: 5),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.location_on,
                                color: MyColors.grey_20, size: 15),
                            Container(width: 5),
                            Text("La Habana, CU",
                                style: MyText.body1(context)
                                    .copyWith(color: MyColors.grey_60)),
                          ],
                        ),
                        Container(height: 20),
                      ],
                    ),
                  ),
                  Container(height: 10),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Mis Productos",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Mis Productos");
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Lista de Deseos",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Lista de Deseos");
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Favoritos",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Favoritos");
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Historial",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Historial");
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Cupones",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Cupones");
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                    child: ListTile(
                      title: Text("Ajustes",
                          style: MyText.subhead(context).copyWith(
                              color: MyColors.grey_60,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        onDrawerItemClicked("Ajustes");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    return widget;
  }
}
