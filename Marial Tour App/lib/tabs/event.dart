import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {

  List dataJSON;
  String base_url = "https://jsonplaceholder.typicode.com/photos"; 

  Future<String> ambilData() async{
    http.Response hasil = await http.get(
      Uri.encodeFull(base_url), headers: {
        "Accept": "aplication/json"
      }
    );

    this.setState((){
      dataJSON = json.decode(hasil.body);
    });
  }

  @override
  void initState(){
    this.ambilData();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
         itemCount: dataJSON == null ? 0 : dataJSON.length,
         itemBuilder: (context,i){
           return new Container( 
             child: new Card(
               elevation: 0.0,
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                      new Image.network(dataJSON[i]['url']),
                      new Text(dataJSON[i]['title'], style: new TextStyle(fontSize:20.0, color: Colors.red[400]),),
                  ]
                )
              )
            )
           );
         }
      ),
    );
  }
}