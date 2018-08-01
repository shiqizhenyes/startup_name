import 'package:flutter/material.dart';
class OpacityDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("透明度"),
        centerTitle: true,
      ),
      body: new Center(
        child: new Opacity(
          opacity: 0.2,
          child: new Container(
            width: 250.0,
            height: 100.0,
//            color: Colors.blueAccent,
            decoration: new BoxDecoration(
              color: const Color(0xff000000)
            ),
          ),

        ),
      ),
    );
  }



}