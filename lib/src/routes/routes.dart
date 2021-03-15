import 'package:flutter/cupertino.dart';
import 'package:patiprecios_flutter/src/pages/home_page.dart';
import 'package:patiprecios_flutter/src/pages/publicacion_page.dart';
import 'package:patiprecios_flutter/src/pages/splashscreen_page.dart';
import 'package:patiprecios_flutter/src/pages/welcome_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'splashscreen': (BuildContext context) => SplashScreenPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'home': (BuildContext context) => HomePage(),
    'publicacion': (BuildContext context) => PublicacionPage(),
  };
}
