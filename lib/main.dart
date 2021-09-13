import 'package:flutter/material.dart';
import 'home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conversor Temperatura C/F',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        primaryColor: Colors.black,
        canvasColor: Colors.yellow,
      ),
      home: Home(),
    );
  }
}

