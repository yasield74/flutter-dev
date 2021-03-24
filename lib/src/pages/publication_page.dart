import 'package:flutter/material.dart';
import 'package:patiprecios/src/widget/bottom_navigation_widget.dart';

class PublicacionPage extends StatefulWidget {
  PublicacionPage({Key key}) : super(key: key);

  @override
  _PublicacionPageState createState() => _PublicacionPageState();
}

class _PublicacionPageState extends State<PublicacionPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          _fondo(size),
          _imagenPublicacion(context, size),
          _nombrePublicacion(size),
          _publicacion(size)
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget _imagenPublicacion(BuildContext context, Size size) {
    return Container(
      height: size.height * 0.45,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/image_21.jpg'),
      ),
    );
  }

  Widget _nombrePublicacion(Size size) {
    return Positioned(
      top: size.height * 0.25,
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

  Widget _fondo(Size size) {
    return Container(
      height: size.height,
      width: size.width,
    );
  }

//TODO: Arreglar el problema del scroll aqui
  Widget _publicacion(Size size) {
    return Positioned(
        top: size.height * 0.4,
        child: Container(
            width: size.width,
            height: size.height * 0.52,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: iterationsIcons(),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Descripción',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '99.99',
                        style: TextStyle(color: Colors.grey, fontSize: 40.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      'Ea nostrud ea sint Lorem. Minim voluptate quis qui et consectetur duis ea velit nostrud duis dolore reprehenderit voluptate. Culpa proident est excepteur laborum tempor cupidatat sit cupidatat anim non id.',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Ubicación',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Florida Región Metropolitana',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Mapa',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage('assets/images/mapa.png'),
                    ),
                  )
                ],
              ),
            )));
  }

  Widget iterationsIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _iconSet(Icons.favorite, Colors.red, 100),
            SizedBox(
              width: 10.0,
            ),
            _iconSet(Icons.stars, Colors.yellow, 100),
            SizedBox(
              width: 10.0,
            ),
            _iconSet(Icons.stars, Colors.yellow, 100),
            SizedBox(
              width: 10.0,
            ),
            _iconSet(Icons.stars, Colors.yellow, 100),
            SizedBox(
              width: 10.0,
            ),
            _iconSet(Icons.thumb_down, Colors.brown, 100),
          ],
        ),
        Row(
          children: [
            _iconSet(Icons.speaker_notes, Colors.blue, 100),
            SizedBox(
              width: 10.0,
            ),
            _iconSet(Icons.send, Colors.orange, 100),
          ],
        )
      ],
    );
  }

  Widget _iconSet(IconData icon, Color color, int value) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('$value'),
      ],
    );
  }
}
