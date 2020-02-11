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
  String _value='';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('type anything')),
      floatingActionButton: new FloatingActionButton(onPressed: _onClicked,
        backgroundColor: Colors.red,
        mini: false,
        child: new Icon(Icons.timer),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[new Text(_value)],
          ),
        ),
      ),
    );
  }

  void _onClicked() => setState(()=> _value = DateTime.now().toString());
}
