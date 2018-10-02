import "dart:async";
import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String url = "https://api.github.com/users/rahulkp220";
  var data = [];

  Future<String> getData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(response.body);
      data.add(resBody);
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Github API"), backgroundColor: Colors.black),
            body: ListView.builder(
                itemCount: data == null ? 0 : data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                        Container(
                            margin: EdgeInsets.all(30.00),
                            width: 300.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        data[index]["avatar_url"])))),
                        Card(
                          child: Container(
                            padding: EdgeInsets.all(20.00),
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.verified_user),
                                  title: Text('Name'),
                                  subtitle: Text(data[index]["name"]),
                                ),
                                ListTile(
                                  leading: Icon(Icons.description),
                                  title: Text('Description'),
                                  subtitle: Text(data[index]["bio"]),
                                ),
                                ListTile(
                                  leading: Icon(Icons.web),
                                  title: Text('Blog'),
                                  subtitle: Text(data[index]["blog"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]));
                })));
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }
}
