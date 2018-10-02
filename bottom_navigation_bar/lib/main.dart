import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.email,
                size: 80.00,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          shape: CircleBorder(side: BorderSide(color: Colors.blue)),
          child: Icon(Icons.attach_file),
        ),
        appBar: AppBar(
          title: Text("Home"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                title: Text(
                  "Search",
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.blue,
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(color: Colors.blue),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.blue,
                ),
                title: Text(
                  "Message",
                  style: TextStyle(color: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}
