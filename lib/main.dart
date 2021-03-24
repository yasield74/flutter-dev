import 'package:flutter/material.dart';
import 'package:patiprecios/src/routes/routes.dart';
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
        initialRoute: 'splashpage',
        routes: getApplicationRoutes(),
        title: 'Material App',
        theme: ThemeData(
            primaryColor: Colors.black,
            accentColor: Colors.black,
            fontFamily: 'Varela Round',
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: Colors.black),
                textTheme: TextTheme(
                    headline6: TextStyle(
                        color: Colors.grey,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold)))),
      ),
    );
  }
}
