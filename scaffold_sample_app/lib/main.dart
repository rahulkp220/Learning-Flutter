import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Learning Scaffold',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Rahul Lakhanpal'),
          actions: <Widget>[new Icon(Icons.settings)],
        ),
      ),
    );
  }
}
