import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Fasilitas(),
    ));

class Fasilitas extends StatefulWidget {
  @override
  _FasilitasState createState() => _FasilitasState();
}

class _FasilitasState extends State<Fasilitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Fasilitas', style: new TextStyle(
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