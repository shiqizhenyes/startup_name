import 'package:flutter/material.dart';

class MarginAndPaddingDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("内边距和外边距示例"),
        centerTitle: true
      ),
      body: new Stack(
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.all(40.0),
              child: new Image.network('http://up.qqjia.com/z/25/tu32710_4.jpg',
              ),
          ),
          new Padding(padding: const EdgeInsets.all(50.0),
          child: new Stack(
            children: <Widget>[
              new Text("边距",
              style: new TextStyle(
                
                color: Colors.pinkAccent

              ),),
            ],

          ))
        ],
      ),
    );
  }

}