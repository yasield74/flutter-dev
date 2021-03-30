import 'package:flutter/material.dart';
import 'package:patiprecios/src/constants/theme.dart';

import 'package:patiprecios/src/widget/input_widget.dart';
import 'package:patiprecios/src/widget/custom_button_widget.dart';

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
                Input(
                  hintText: 'Titulo',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Precio',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Categoría',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Nuevo/Usado',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Ubicación',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Descripción',
                  maxLines: 6,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Input(
                  hintText: 'Tags',
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustonButton(
                        title: 'SIGUIENTE',
                        buttonColor: PatiColors.accentDark,
                        textColor: Colors.white,
                        elevation: 0,
                        onPressed: () {
                          print('click');
                        },
                      ),
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
