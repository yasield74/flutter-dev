import 'package:flutter/material.dart';
import 'package:patiprecios_flutter/src/constants/theme.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [_colorFondo(), _OtrosElementos(context)],
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: PatiColors.darkBlue,
    );
  }

  Widget _OtrosElementos(BuildContext context) {
    final heigt = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Positioned(
      top: heigt * 0.3,
      child: Container(
        width: width * 0.7,
        padding: EdgeInsets.only(left: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 350.0,
                height: 350.0,
                child: Image(image: AssetImage('assets/patiprecios_icon.jpg'))),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Bienvenidos a Patiprecios, la aplicación para comprar más rápida y eficaz',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: 'Montserrat'),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: PatiColors.orange),
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Comencemos',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontFamily: 'Varela Round'),
                      )),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                })
          ],
        ),
      ),
    );
  }
}
