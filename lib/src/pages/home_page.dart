import 'package:flutter/material.dart';
import 'package:patiprecios/src/pages/favorites_page.dart';
import 'package:patiprecios/src/pages/communities_page.dart';
import 'package:patiprecios/src/pages/location_page.dart';
import 'package:patiprecios/src/pages/search_search.dart';
import 'package:patiprecios/src/pages/settings_page.dart';
import 'package:patiprecios/src/providers/ui_provider.dart';
import 'package:patiprecios/src/widget/bottom_navigation_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/photo_female_1.jpg'),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text('Hola')
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.location_on,
              color: Colors.pink,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Obtener el currentIndex
    final uiProvider = Provider.of<UiProvider>(context);

    //cambiar para mostrar la pagina respectiva
    final currenIndexBottomBar = uiProvider.selectedBottomAppbarOpt;

    switch (currenIndexBottomBar) {
      case 0:
        return LocationFragment();
        break;
      case 1:
        return SearchFragment();
        break;
      case 2:
        return FavoritesPage();
        break;
      case 3:
        return ComunidadesPage();
        break;
      case 4:
        return SettingFragment();
        break;
      default:
        return LocationFragment();
        break;
    }
  }
}
