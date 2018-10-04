import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Rahul Lakhanpal")
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountEmail: Text("@rahullkp"),
                  accountName: Text("Rahul Lakhanpal"),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://images.pexels.com/photos/269583/pexels-photo-269583.jpeg?auto=compress&cs=tinysrgb&h=350")
                    )
                  ),
                ),
                Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                    ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text('Trending'),
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notification'),
                    )
                  ],
                )
              ],
            )
          ),
        ),
      );
  }
} 
