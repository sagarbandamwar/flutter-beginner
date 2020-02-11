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
  void _onClick(String value) => setState(()=> _value = value);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('type anything')),

      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(Icons.timer), onPressed: ()=>_onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.ac_unit), onPressed: ()=>_onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.account_box), onPressed: ()=>_onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.account_balance), onPressed: ()=>_onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.people), onPressed: ()=>_onClick('Button 1')),
        new IconButton(icon: new Icon(Icons.add_to_photos), onPressed: ()=>_onClick('Button 1')),
      ],

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[new Text('Hello world')],
          ),
        ),
      ),
    );
  }
}
