import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/data/img.dart';
import 'package:patiprecios_flutter/src/data/my_colors.dart';

import 'package:toast/toast.dart';

import 'my_text.dart';

class CustomDrawer extends Drawer {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
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
                    backgroundImage: AssetImage(Img.get("photo_male_7.jpg")),
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
                    Icon(Icons.location_on, color: MyColors.grey_20, size: 15),
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
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Mis Productos");
              },
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              title: Text("Lista de Deseos",
                  style: MyText.subhead(context).copyWith(
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Lista de Deseos");
              },
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              title: Text("Favoritos",
                  style: MyText.subhead(context).copyWith(
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Favoritos");
              },
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              title: Text("Historial",
                  style: MyText.subhead(context).copyWith(
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Historial");
              },
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              title: Text("Cupones",
                  style: MyText.subhead(context).copyWith(
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Cupones");
              },
            ),
          ),
          Container(
            height: 45,
            child: ListTile(
              title: Text("Ajustes",
                  style: MyText.subhead(context).copyWith(
                      color: MyColors.grey_60, fontWeight: FontWeight.bold)),
              onTap: () {
                onDrawerItemClicked(context, "Ajustes");
              },
            ),
          ),
        ],
      ),
    );
  }

  void onDrawerItemClicked(BuildContext context, String name) {
    Navigator.pop(context);
    Toast.show(name + " Selected", context);
  }
}
