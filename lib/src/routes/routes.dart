import 'package:flutter/cupertino.dart';
import 'package:patiprecios/src/pages/search/advanced_search_page.dart';
import 'package:patiprecios/src/pages/comments_page.dart';
import 'package:patiprecios/src/pages/community/community_members_page.dart';
import 'package:patiprecios/src/pages/community/community_page.dart';
import 'package:patiprecios/src/pages/home_page.dart';
import 'package:patiprecios/src/pages/login/login_page.dart';
import 'package:patiprecios/src/pages/new_publication_page.dart';
import 'package:patiprecios/src/pages/login/newaccount_page.dart';
import 'package:patiprecios/src/pages/login/newacctount_pagetwo.dart';
import 'package:patiprecios/src/pages/profile/profile_page.dart';

import 'package:patiprecios/src/pages/publication_page.dart';
import 'package:patiprecios/src/pages/splashscreen_page.dart';
import 'package:patiprecios/src/pages/login/welcome_page.dart';
import 'package:patiprecios/src/pages/community/new_community.dart';

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
    'comments': (BuildContext context) => CommentsPage(),
    'communitymembers': (BuildContext context) => CommunityMembersPage(),
  };
}
