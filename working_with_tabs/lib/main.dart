import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Playing with Tabs"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: Icon(Icons.message)),
                  Tab(icon: Icon(Icons.notifications)),
                  Tab(icon: Icon(Icons.business_center)),
                ],
              ),
            ),
            body: TabBarView(children: <Widget>[
              Icon(Icons.home, size: 80.0),
              Icon(Icons.people, size: 80.0),
              Icon(Icons.message, size: 80.0),
              Icon(Icons.notifications, size: 80.0),
              Icon(Icons.business_center, size: 80.0)
            ]),
          )),
    );
  }
}
