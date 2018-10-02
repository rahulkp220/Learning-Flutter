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
  final String url = "https://swapi.co/api/starships";
  var data = [];

  Future<String> getData() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    setState(() {
      var resBody = json.decode(response.body);
      data = resBody["results"];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("JSON API"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(20.00),
                        child: Text(
                          data[index]["name"],
                          style: TextStyle(color: Colors.deepOrangeAccent),
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }
}
