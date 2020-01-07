import 'package:flutter/material.dart';
import 'package:pogo_diary/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Streams Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
    );
  }
}