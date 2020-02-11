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
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('How are you public'),
                      new Text('How are you public'),
                    ],
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('How are you public'),
                      new Text('How are you public'),
                      new Text('How are you public'),
                    ],
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('How are you public'),
                      new Text('How are you public'),
                      new Text('How are you public'),
                    ],
                  ),
                ),
              ),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(30.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('How are you public'),
                      new Text('How are you public'),
                      new Text('How are you public'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
