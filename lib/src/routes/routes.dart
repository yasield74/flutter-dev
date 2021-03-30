import 'package:flutter/cupertino.dart';
import 'package:patiprecios/src/pages/advanced_search_page.dart';
import 'package:patiprecios/src/pages/community_page.dart';
import 'package:patiprecios/src/pages/home_page.dart';
import 'package:patiprecios/src/pages/login_page.dart';
import 'package:patiprecios/src/pages/new_publication_page.dart';
import 'package:patiprecios/src/pages/newaccount_page.dart';
import 'package:patiprecios/src/pages/newacctount_pagetwo.dart';
import 'package:patiprecios/src/pages/profile_page.dart';

import 'package:patiprecios/src/pages/publication_page.dart';
import 'package:patiprecios/src/pages/splashscreen_page.dart';
import 'package:patiprecios/src/pages/welcome_page.dart';
import 'package:patiprecios/src/pages/new_community.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'splashpage': (BuildContext context) => SplashScreenPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'home': (BuildContext context) => HomePage(),
    'publication': (BuildContext context) => PublicacionPage(),
    'community': (BuildContext context) => CommunityPage(),
    'login': (BuildContext context) => LoginPage(),
    'newaccount': (BuildContext context) => NewAccountPageOne(),
    'newaccount2': (BuildContext context) => NewAccountPageTwo(),
    'profile': (BuildContext context) => ProfilePage(),
    'newpublication': (BuildContext context) => NewPublicationPage(),
    'newcommunity': (BuildContext context) => NewCommunityPage(),
    'advancedsearch': (BuildContext context) => AdvancedSearchPage(),
  };
}
