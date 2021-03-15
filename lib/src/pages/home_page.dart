import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/pages/cerca_page.dart';
import 'package:patiprecios_flutter/src/pages/group_page.dart';
import 'package:patiprecios_flutter/src/pages/location_page.dart';
import 'package:patiprecios_flutter/src/pages/mas_vendidos_page.dart';
import 'package:patiprecios_flutter/src/pages/search_search.dart';
import 'package:patiprecios_flutter/src/pages/settings_page.dart';
import 'package:patiprecios_flutter/src/pages/sugerencias_page.dart';
import 'package:patiprecios_flutter/src/providers/ui_provider.dart';
import 'package:patiprecios_flutter/src/widget/bottom_navigation_widget.dart';
import 'package:patiprecios_flutter/src/widget/custom_drawer_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return DefaultTabController(
      initialIndex: uiProvider.selectedTabBarObt,
      length: 3,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text('Hola'),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/photo_female_1.jpg'),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'CERCA DE TI',
              ),
              Tab(
                text: 'SUGERENCIAS',
              ),
              Tab(
                text: 'LO MAS VENDIDO',
              )
            ],
            onTap: (val) {
              uiProvider.selectedTabBarObt = val;
              uiProvider.selectedBottomAppbarOpt = 0;
              uiProvider.flag = 1;
            },
          ),
        ),
        body: _HomePageBody(),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
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
    final currenIndexBottom = uiProvider.selectedBottomAppbarOpt;
    final currenIndexTab = uiProvider.selectedTabBarObt;
    final flag = uiProvider.flag;

    if (flag == 0) {
      switch (currenIndexBottom) {
        case 0:
          return LocationFragment();
        case 1:
          return SearchFragment();
        case 2:
          return LocationFragment();
        case 3:
          return GroupFragment();
        case 4:
          return SettingFragment();
        default:
          return LocationFragment();
      }
    } else {
      switch (currenIndexTab) {
        case 0:
          return CercaPage();
        case 1:
          return SugerenciasPage();
        case 2:
          return MasVendidosPage();
        default:
          return CercaPage();
      }
    }
  }
}
