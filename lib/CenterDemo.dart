import 'package:flutter/material.dart';


class CenterDemo extends StatelessWidget {

  @override
    Widget build(BuildContext context) {

      return new Scaffold(
        appBar: new AppBar(
          title: new Text("居中布局"),
          centerTitle: true
        ),
        body: new Center(
          child: new Text("居中布局"),
        ),
      );
    }

}