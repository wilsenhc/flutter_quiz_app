import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        primary: true,
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Text('Default app'),
      ),
    );
  }
}
