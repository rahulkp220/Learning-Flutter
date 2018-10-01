import "package:flutter/material.dart";

void main() => runApp(new MyApp());

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            Icons.cake,
            size: 100.0,
          ),
          new Text(
            "Happy Birthday",
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = "Scaffold App 2";

  void _home() {
    print("home");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "title",
        home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.black,
            title: new Text(_title),
            actions: <Widget>[
              new IconButton(
                  icon: new Icon(Icons.home),
                  onPressed: () {
                    _home();
                  }),
            ],
          ),
          body: new Body(),
        ));
  }
}
