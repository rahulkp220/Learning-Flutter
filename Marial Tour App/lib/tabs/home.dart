import 'package:flutter/material.dart'; 
import '../screens/about.dart';
import '../screens/support.dart';
import '../screens/home/wisata.dart';
import '../screens/home/kuliner.dart';
import '../screens/home/belanja.dart';
import '../screens/home/fasilitas.dart';
import '../screens/home/kendaraan.dart';
import '../screens/home/oleholeh.dart';
import '../screens/home/pendidikan.dart';
import '../screens/home/tourguide.dart'; 
import '../screens/home/penginapan.dart'; 

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: new SingleChildScrollView(
          padding:
            EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*================     ROW 1    ==================*/
              Row(
                children: <Widget>[
                  /*========    1    ========*/
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Wisata()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/wisata.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Wisata", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    2    ========*/

                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kuliner()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/kuliner.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Kuliner", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    3    ========*/
                  
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Penginapan()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/penginapan.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Penginapan", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),
                ],
              ),
              
              /*================     ROW 2    ==================*/
              Row(
                children: <Widget>[
                  /*========    1    ========*/
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TourGuide()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/destination.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Tour Guide", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    2    ========*/

                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OlehOleh()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/oleh_oleh.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Oleh-Oleh", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    3    ========*/
                  
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Belanja()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/fashion.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Belanja", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),
                ],
              ),

              /*================     ROW 3    ==================*/
              Row(
                children: <Widget>[
                  /*========    1    ========*/
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kendaraan()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/kendaraan.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Kendaraan", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    2    ========*/

                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pendidikan()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/pendidikan.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Pendidikan", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),

                  /*========    3    ========*/
                  
                  new Expanded(
                    child: new GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fasilitas()),
                      );
                    },
                    child: new Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: new Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: new Padding(
                                padding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                                    child: new Image(
                                        width: 50.0,
                                        height: 50.0,
                                        fit: BoxFit.fill,
                                        image: new AssetImage('assets/img/fasilitas.png')),
                                  ),
                                ])),
                          ),
                        ),
                        new Text("Fasilitas", style: TextStyle(fontSize: 12.0, color: Colors.grey[600]),)
                      ]) 
                    ),
                  ),
                ],
              ),

              new Container(
                child: new Column(
                  children: <Widget>[
                     new Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0),
                      child: new Text("Destination Favorite", style: TextStyle(color: Colors.grey[700], fontSize: 18.0),)
                    ),
                     
                  ]
                )
              ),
            ], 
          ),
        ),
      )
    );
  }
} 