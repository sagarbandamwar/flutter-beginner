import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

enum Answers { YES, NO, MAYBE }

class _State extends State<MyApp> {
  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askuser() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text('Simple Dialog'),
          children: <Widget>[
            new SimpleDialogOption(child: new Text('YES!!'), onPressed: () { Navigator.pop(context,Answers.YES);},),
            new SimpleDialogOption(child: new Text('NO'), onPressed: () { Navigator.pop(context,Answers.YES);},),
            new SimpleDialogOption(child: new Text('MAYBE'), onPressed: () { Navigator.pop(context,Answers.YES);},)
          ],
        ))) {
      case Answers.YES:
        _setValue('YES');
        break;
      case Answers.NO:
        _setValue('NO');
        break;
      case Answers.MAYBE:
        _setValue('MAYBE');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text(_value),
                new RaisedButton(
                  onPressed: _askuser,
                  child: new Text('Click me'),
                )
              ],
            ),
          )),
    );
  }
}
