import 'package:flutter/material.dart';
import 'package:patiprecios/src/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedBottomAppbarOpt;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
            label: 'Localizar', icon: Icon(Icons.location_on)),
        BottomNavigationBarItem(label: 'Buscar', icon: Icon(Icons.search)),
        BottomNavigationBarItem(
            label: 'Otro',
            icon: Image(
              height: 35.0,
              image: AssetImage('assets/images/isotype_color.png'),
            )),
        BottomNavigationBarItem(label: 'Comunidad', icon: Icon(Icons.group)),
        BottomNavigationBarItem(
            label: 'Perfil', icon: Icon(Icons.account_circle_outlined)),
      ],
      onTap: (index) {
        uiProvider.selectedBottomAppbarOpt = index;
      },
    );
  }
}
