import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          color: Colors.white,
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _logo(),
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
            'assets/images/patiprecios_icon_only.jpg',
          ),
          height: 150.0,
          width: 150.0,
        ),
        Text(
          'Bienvenido',
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
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'My.email@gmail.com',
                  border: InputBorder.none,
                ),
              ),
            ),
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
                        'Email',
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
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: InputBorder.none,
                ),
              ),
            ),
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
                        'Contraseña',
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
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'home');
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
                  'INGRESAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: false,
              onChanged: (valor) {},
            ),
            Text('Recordar contraseña')
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'rememberpassword');
          },
          child: Text(' ¿Olvidaste tu contraseña?'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Icon(Icons.ac_unit),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Icon(Icons.ac_unit),
                ))
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¿No tienes cuenta?',
              style: TextStyle(fontSize: 13.0),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'newaccount');
                },
                child: Text('Regístrate gratis aqui',
                    style: TextStyle(fontSize: 13.0)))
          ],
        )
      ],
    );
  }
}
