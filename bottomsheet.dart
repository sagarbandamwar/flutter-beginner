import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  List<BottomNavigationBarItem> _listItmes;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _listItmes = new List();
    _listItmes.add(new BottomNavigationBarItem(icon: new Icon(Icons.ac_unit), title: new Text('Ac Unit')));
    _listItmes.add(new BottomNavigationBarItem(icon: new Icon(Icons.add_a_photo), title: new Text('Photo')));
    _listItmes.add(new BottomNavigationBarItem(icon: new Icon(Icons.access_time), title: new Text('Access')));
    _listItmes.add(new BottomNavigationBarItem(icon: new Icon(Icons.android), title: new Text('Andoid')));
    _listItmes.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('People')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('type anything')),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(_value)
              ],
            ),
          )
      ),
      bottomNavigationBar: new BottomNavigationBar(items: _listItmes,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item){
          setState(() {
            _index = item;
            _value = "Curreny value is ${_index.toString()}";
          });
        },),
    );
  }
}
