import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/displays.dart';
import 'package:patiprecios_flutter/fragments/fragment_group.dart';
import 'package:patiprecios_flutter/fragments/fragment_location.dart';
import 'package:patiprecios_flutter/fragments/fragment_search.dart';
import 'package:patiprecios_flutter/fragments/fragment_settings.dart';



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage>{

  int _currentIndex = 0;
  final List<Widget> selectedFragment = [
    LocationFragment(),
    SearchFragment(),
    GroupFragment(),
    SettingFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text('Bottom Navigation Bar'),
        ),*/
      body: selectedFragment[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Localizar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Comunidad',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {

    setState(() {
      _currentIndex = index;
    });

  }
}

