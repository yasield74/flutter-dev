import 'package:flutter/material.dart';
import 'package:patiprecios/src/widget/custom_button_widget.dart';

class ComunidadesPage extends StatelessWidget {
  const ComunidadesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Comunidades',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 200,
                  child: Text(
                    'Adipisicing occaecat deserunt commodo exercitation esse dolore ex incididunt.',
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, val) {
                return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                        image: AssetImage('assets/images/image_7.jpg'),
                      ),
                    ),
                    title: Text(
                      'Nombre de la comunidad privada',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Descripción de la comunidad ',
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              '99 Miembros',
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              '100 publicaciones',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: TextButton(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.blueAccent),
                          child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Ver',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              )),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'community');
                        }));
              },
              separatorBuilder: (context, index) => Divider(),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          CustomButton(
            title: 'CREAR COMUNIDAD',
            buttonColor: Colors.blueAccent,
            onPressed: () {
              Navigator.pushNamed(context, 'newcommunity');
            },
          )
        ],
      ),
    );
  }
}
