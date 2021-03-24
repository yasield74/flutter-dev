import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';

class NewPublicationPage extends StatefulWidget {
  NewPublicationPage({Key key}) : super(key: key);

  @override
  _NewPublicationPageState createState() => _NewPublicationPageState();
}

class _NewPublicationPageState extends State<NewPublicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nueva Publicación',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Agregar Foto',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.add_circle, color: Colors.grey)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Texto pequenno de ejemplo',
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Título',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Precio',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Categoría',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Nuevo/Usado',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Ubicación',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Descripción',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'Tags',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(16),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: () {},
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'SIGUIENTE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            ),
                            decoration: BoxDecoration(
                                color: PatiColors.accentDark,
                                borderRadius: BorderRadius.circular(30.0)),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
