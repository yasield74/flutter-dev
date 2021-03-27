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
                        fontWeight: FontWeight.bold))),
            textTheme: TextTheme(
                headline1: TextStyle(fontSize: 35, color: Colors.black),
                headline2: TextStyle(fontSize: 30, color: Colors.black),
                headline3: TextStyle(fontSize: 25, color: Colors.black),
                headline4: TextStyle(fontSize: 21, color: Colors.black),
                headline5: TextStyle(fontSize: 18, color: Colors.black),
                headline6: TextStyle(fontSize: 12, color: Colors.black))),
      ),
    );
  }
}
