import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';
import 'package:patiprecios/src/pages/user_publications_page.dart';
import 'package:patiprecios/src/pages/user_purchases_page.dart';
import 'package:patiprecios/src/widget/bottom_navigation_widget.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            background(context, size),
            _content(context, size),
            _avatar(context, size),
          ],
        ),
      ),
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
                  _userInfo(),
                  SizedBox(
                    height: 15.0,
                  ),
                  _actionButtons(),
                  SizedBox(
                    height: 15.0,
                  ),
                  _communityInfo(),
                  _tabs(),
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
          backgroundImage: AssetImage('assets/images/photo_male_5.jpg'),
          maxRadius: 50,
        ));
  }

  Widget _communityInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              '300',
              style: TextStyle(fontSize: 35),
            ),
            Text('Seguidores')
          ],
        ),
        Container(
          color: Colors.black,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          width: 1.0,
          height: 65.0,
        ),
        Column(
          children: [
            Text(
              '200',
              style: TextStyle(fontSize: 35),
            ),
            Text('Seguidos')
          ],
        ),
        Container(
          color: Colors.black,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          width: 1.0,
          height: 65.0,
        ),
        Column(
          children: [
            Text(
              '100',
              style: TextStyle(fontSize: 35),
            ),
            Text('Publicaciones')
          ],
        ),
      ],
    );
  }

  Widget _userInfo() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre Apellido',
              style: TextStyle(fontSize: 32.0),
            ),
            Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.blue,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valoracion'),
            _valoracion(5.0),
          ],
        )
      ],
    );
  }

  Widget _valoracion(double d) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
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
        SizedBox(
          width: 20.0,
        ),
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
        SizedBox(
          width: 10.0,
        ),
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

  Widget _tabs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Mis Publicaciones',
            ),
            Tab(
              text: 'Compras',
            ),
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        Container(
          height: 1000,
          child: TabBarView(
            children: [UserPublications(), UserPurchases()],
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}
