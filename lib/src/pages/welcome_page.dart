import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';
import 'package:patiprecios/src/pages/login_page.dart';

import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [_colorFondo(size), _OtrosElementos(context, size)],
      ),
    );
  }

  Widget _colorFondo(Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: PatiColors.darkBlue,
    );
  }

  Widget _OtrosElementos(BuildContext context, Size size) {
    return Positioned(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Container(
                width: 320.0,
                height: 320.0,
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
                      MaterialPageRoute(builder: (context) => LoginPage()));
                })
          ],
        ),
      ),
    );
  }
}
