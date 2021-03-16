import 'package:flutter/cupertino.dart';
import 'package:patiprecios_flutter/src/pages/home_page.dart';
import 'package:patiprecios_flutter/src/pages/publication_page.dart';
import 'package:patiprecios_flutter/src/pages/splashscreen_page.dart';
import 'package:patiprecios_flutter/src/pages/welcome_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'splashscreen': (BuildContext context) => SplashScreenPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'home': (BuildContext context) => HomePage(),
    'publication': (BuildContext context) => PublicacionPage(),
  };
}
