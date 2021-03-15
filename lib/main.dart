import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/routes/routes.dart';
import 'package:provider/provider.dart';

import 'src/providers/ui_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new UiProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashscreen',
        routes: getApplicationRoutes(),
        title: 'Material App',
      ),
    );
  }
}
