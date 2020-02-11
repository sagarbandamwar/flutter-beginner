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
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('Layouts')),
      body: new Container(
        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[new Text('Login here'),
              new Row(
                children: <Widget>[
                  new Text('Username:  '),
                  new Expanded(child: new TextField(controller: _user,))
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Password:  '),
                  new Expanded(child: new TextField(controller: _pass,obscureText: true,))
                ],
              ),
              new Padding(padding: new EdgeInsets.all(12.0),
                child: new RaisedButton(onPressed: ()=> print('Login ${_user.text}'), child: new Text('Click me'),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
