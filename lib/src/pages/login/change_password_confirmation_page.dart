import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';
import 'package:patiprecios/src/widget/custom_button_widget.dart';

class ChangePasswordConfirmationPage extends StatelessWidget {
  const ChangePasswordConfirmationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/patiprecios_icon_only.jpg'),
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Contraseña cambiada!',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                        color: PatiColors.darkBlue,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Te hemos enviado un Email. Ahora puedes seguir comprando.',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.grey,
                      ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustonButton(
                          title: 'SIGUIENTE',
                          buttonColor: PatiColors.darkBlue,
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
