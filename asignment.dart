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
  String _value = '';
  String _display = '';

  void _onChanged(String value) {
    setState(() {
      _value = value;
    });
  }

  void _onClicked() {
    setState(() {
      _display = _value;
    });
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
              new Text(_display),
              new TextField(onChanged: _onChanged,),
              new RaisedButton(onPressed: _onClicked, child: new Text('Click me')),
            ],
          ),
        ),
      ),
    );
  }
}


