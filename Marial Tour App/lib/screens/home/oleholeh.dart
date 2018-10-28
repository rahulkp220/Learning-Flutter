import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: OlehOleh(),
    ));

class OlehOleh extends StatefulWidget {
  @override
  _OlehOlehState createState() => _OlehOlehState();
}

class _OlehOlehState extends State<OlehOleh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Oleh Oleh', style: new TextStyle(
          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}