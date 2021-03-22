import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';
import 'package:patiprecios/src/widget/bottom_navigation_widget.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: PatiColors.primaryDark,
        elevation: 0,
      ),
      body: Stack(
        children: [
          background(context, size),
          _content(context, size),
          _avatar(context, size)
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  Widget background(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: PatiColors.primaryDark,
    );
  }

  Widget _content(BuildContext context, Size size) {
    return Positioned(
        top: 150,
        child: Container(
          width: size.width,
          height: size.height - 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  _communityTitle(),
                  SizedBox(height: 20.0),
                  _actionButtons(),
                  SizedBox(height: 20.0),
                  _communityInfo(),
                  SizedBox(height: 20.0),
                  _communityText()
                ],
              ),
            ),
          ),
        ));
  }

  Widget _avatar(BuildContext context, Size size) {
    return Positioned(
        top: 100,
        left: size.width / 2 - 50,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/image_2.jpg'),
          maxRadius: 50,
        ));
  }

  Widget _communityTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Nombre de la comunidad',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
        ),
        Text(
          'privada',
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    );
  }

  Widget _actionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(
              Icons.speaker_notes,
              size: 40.0,
              color: PatiColors.primaryDark,
            ),
            onPressed: () {}),
        TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 100,
              decoration: BoxDecoration(
                  color: PatiColors.primaryDark,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  'Seguir',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
        IconButton(
            icon: Icon(
              Icons.share,
              size: 40.0,
              color: PatiColors.primaryDark,
            ),
            onPressed: () {}),
      ],
    );
  }

  Widget _communityInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              '500',
              style: TextStyle(fontSize: 35),
            ),
            Text('Miembros')
          ],
        ),
        Container(
          color: Colors.black,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          width: 2.0,
          height: 65.0,
        ),
        Column(
          children: [
            Text(
              '500',
              style: TextStyle(fontSize: 35),
            ),
            Text('Miembros')
          ],
        ),
      ],
    );
  }

  Widget _communityText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Descripcion de la comuinidad',
          style: TextStyle(
              color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Text(
          'Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum. Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          child: Text(
            "UNIRSE A LA COMUNIDAD",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.grey,
            primary: Colors.white,
            onSurface: Colors.grey,
            elevation: 5,
            minimumSize: Size(150, 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: () {},
        ),
        SizedBox(height: 150.0),
      ],
    );
  }
}
