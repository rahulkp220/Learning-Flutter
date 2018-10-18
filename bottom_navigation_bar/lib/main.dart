import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            // Aligns the widgets to the center of the screen
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // The Icon widget is used to make different icons
              Icon(
                Icons.email,
                size: 80.00,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        // Creates a floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          // The shape of the button we want
          shape: CircleBorder(side: BorderSide(color: Colors.blue)),
          // The content we want to have inside the button
          child: Icon(Icons.attach_file),
        ),
        appBar: AppBar(
          title: Text("Home"),
        ),
        // bottomNavigationBar widget is used to make the bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: [
            // This is used to set the items we want to have on the navigation bar
            // We can have both icons and text or anyone of them as the item
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
