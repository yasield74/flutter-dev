import 'package:flutter/material.dart';
import 'package:patiprecios/src/widget/input_widget.dart';

class SearchFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<SearchFragment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Input(
                  hintText: 'Buscar',
                ),
              ),
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.pushNamed(context, 'advancedsearch');
                  })
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Búsquedas recientes',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, i) {
                  return Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.fill,
                          width: 55,
                          height: 55,
                          image: AssetImage('assets/images/image_19.jpg'),
                        ),
                      ),
                      title: Text('Nombre del Producto',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(color: Colors.grey)),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
