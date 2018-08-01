import 'package:flutter/material.dart';

class SizeAndAspectRatioDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("强制大小和比例显示"),
        centerTitle: true,
      ),

      body: new Column(
        children: <Widget>[
          new SizedBox(
            width: 250.0,
            height: 250.0,
            child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.red
              ),
            ),
          ),

          new AspectRatio(aspectRatio: 3.0/2.0,
          child: new Container(
            decoration: new BoxDecoration(
              color: Colors.cyan
            ),
          ),)
        ],
      )


    );
  }


}