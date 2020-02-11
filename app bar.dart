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
  int  _value = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('type anything'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _onAdd),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _onSub)
        ],
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value.toString() , style: new TextStyle(fontWeight: FontWeight.bold , fontSize: 35.00),)
            ],
          ),
        ),
      ),
    );
  }

  void _onAdd() => setState(()=> _value++);

  void _onSub() => setState(()=> _value--);
}
