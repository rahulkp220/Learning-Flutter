import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.cyan),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 80.0)),
                    CircleAvatar(
                      radius: 150.0,
                      child: Icon(Icons.account_balance, size: 150.0),
                      backgroundColor: Colors.cyanAccent,
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      "Lambda Bank",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      "Banking at your fingure tips!",
                      style: TextStyle(
                          color: Colors.blue, fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      strokeWidth: 4.0,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
