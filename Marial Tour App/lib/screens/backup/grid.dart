import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(MaterialApp(
      home: Wisata(),
    ));

class Wisata extends StatefulWidget {
  @override
  _WisataState createState() => _WisataState();
}

class _WisataState extends State<Wisata> {

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text('Wisata', style: new TextStyle(
          fontSize: Theme.of(context).platform == TargetPlatform.iOS ? 17.0 : 20.0,
        ),
      ),
      elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 0.0,
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
        children: _buildGridTiles(29),//Where is this function ?
      ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Stack> containers = new List<Stack>.generate(numberOfTiles,
  (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ?
              'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
    return new Stack(
      alignment: const Alignment(-1.0, 0.0),
      children: <Widget>[
        new Container(
          //Do you need to make Image as "Circle"
          child: new Image.asset(
              imageName,
              width: 180.0,
              height: 180.0,
              fit: BoxFit.fill
          ),
        ),
        //How to set background to Text ?
        //Let's move Text inside a Container,then set it's decoration
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5.0),
              decoration: new BoxDecoration(
                color: new Color.fromARGB(100, 0, 0, 0)
              ),
              child: new Container(
                child: new Text("Kawasan Tangkuban Perahu", style: new TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
              )
            ),
            new Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left:5.0, right: 5.0, bottom: 5.0),
              decoration: new BoxDecoration(
                color: new Color.fromARGB(100, 0, 0, 0)
              ),
              child: new Container(
                child: new Text("0,29 km", style: new TextStyle(
                fontSize: 12.0, 
                color: Colors.white,
              )),
              )
            ),
          ]
        )

      ],
    );
    /*
    return new Container(
      child: new Image.asset(
        imageName,
        fit: BoxFit.fill
      ),
    );
    */
  });
  return containers;
}