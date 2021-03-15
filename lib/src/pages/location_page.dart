import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/pages/cerca_page.dart';
import 'package:patiprecios_flutter/src/pages/mas_vendidos_page.dart';
import 'package:patiprecios_flutter/src/pages/sugerencias_page.dart';

class LocationFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<LocationFragment>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'CERCA DE TI',
              ),
              Tab(
                text: 'SUGERENCIAS',
              ),
              Tab(
                text: 'LO MÁS VENDIDO',
              )
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              children: [CercaPage(), SugerenciasPage(), MasVendidosPage()],
              controller: _tabController,
            ),
          ),
        ],
      ),
    ));
  }
}
