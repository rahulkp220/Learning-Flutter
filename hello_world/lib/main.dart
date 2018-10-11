// import material library
import "package:flutter/material.dart";

// Run the HelloWorld app
void main() => runApp(new HelloWorld());

// Create statelesswidget class
class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Material(
        // Center the child widget 
        child: new Center(
          // Text widget displays the required text
          child: new Text("Hello World"),
        ),
      ),
    );
  }
}
