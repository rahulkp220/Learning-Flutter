import "package:flutter/material.dart";

void main() => runApp(new HelloWorld());

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Material(
        child: new Center(
          child: new Text("Hello World"),
        ),
      ),
    );
  }
}
