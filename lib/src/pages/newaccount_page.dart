import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:patiprecios/src/constants/theme.dart';

class NewAccountPageOne extends StatelessWidget {
  const NewAccountPageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _logo(),
                  SizedBox(
                    height: 50.0,
                  ),
                  _paginado(),
                  SizedBox(
                    height: 50.0,
                  ),
                  _formulario(context)
                ],
              ),
            ),
          ),
        ));
  }

  Widget _logo() {
    return Column(
      children: [
        Image(
          image: AssetImage(
            'assets/patiprecios_icon_only.jpg',
          ),
          height: 150.0,
          width: 150.0,
        ),
        Text(
          'Crear una cuenta',
          style: TextStyle(
              fontSize: 40.0,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: PatiColors.darkBlue),
        ),
        Text(
          'Ingresa los datos de tu cuenta',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'Patiprecios',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  Widget _formulario(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(width: 1.0, color: Colors.grey)),
                child: IntlPhoneField(
                  decoration: InputDecoration(border: InputBorder.none),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                )),
            Positioned(
                left: 20.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        'Número de teléfono',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'newaccount2');
            },
            child: Container(
              width: 400,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: PatiColors.darkBlue,
              ),
              child: Center(
                child: Text(
                  'SIGUIENTE',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            )),
      ],
    );
  }

  Widget _paginado() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Paso 1',
              style: TextStyle(
                  color: PatiColors.darkBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 100.0,
              height: 7.0,
              color: PatiColors.darkBlue,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Paso 2',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 110.0,
              height: 7.0,
              color: Colors.grey,
            )
          ],
        )
      ],
    );
  }
}
