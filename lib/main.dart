import 'package:flutter/material.dart';

import 'package:startup_name/HomeWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter学习',
      theme: new ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new HomeWidget(),
    );
  }

}


