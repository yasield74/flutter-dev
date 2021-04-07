import 'dart:async';

import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';
import 'package:patiprecios/src/pages/home/home_page.dart';
import 'package:patiprecios/src/pages/login/welcome_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/images/patiprecios_icon_only.jpg'),
            width: 200.0,
            height: 200.0,
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            height: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: LinearProgressIndicator(
                value: null,
                backgroundColor: PatiColors.aqua,
                valueColor: AlwaysStoppedAnimation<Color>(PatiColors.orange),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomePage())));
  }
}
