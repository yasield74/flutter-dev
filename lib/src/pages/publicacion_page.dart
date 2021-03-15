import 'package:flutter/material.dart';

class PublicacionPage extends StatefulWidget {
  PublicacionPage({Key key}) : super(key: key);

  @override
  _PublicacionPageState createState() => _PublicacionPageState();
}

class _PublicacionPageState extends State<PublicacionPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        _fondo(),
        _imagenPublicacion(context, height),
        _nombrePublicacion(height),
        _publicacion(height)
      ],
    ));
  }

  Widget _imagenPublicacion(BuildContext context, double height) {
    return Container(
      height: height * 0.45,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/image_21.jpg'),
      ),
    );
  }

  Widget _nombrePublicacion(double height) {
    return Positioned(
      top: height * 0.30,
      child: Container(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre publicacion',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Artículo nuevo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _fondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
    );
  }

  //TODO: Terminar implementacion aqui

  Widget _publicacion(double height) {
    return Positioned(
        top: height * 0.4,
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              Text('Dest data'),
              Text('Dest data'),
              Text('Dest data'),
              Text('Dest data'),
              Text('Dest data'),
              Text('Dest data'),
            ],
          ),
        ));
  }
}
