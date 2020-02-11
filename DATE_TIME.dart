/*
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

  Future _setDate() async {
    DateTime picked = await showDatePicker(
        context: context,

        firstDate: new DateTime(2018),  // calender will show upto the date u declared as a first date
        initialDate: new DateTime(2017),// date to show when calender is launched
        lastDate: new DateTime(2020)    // will show upto the last date
    );
    if(picked != null) setState(() => _value = picked.toString());
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
              new Text(_value),
              new RaisedButton(onPressed: _setDate,child: new Text('Click me'),)
            ],
          ),
        ),
      ),
    );
  }
}
*/
