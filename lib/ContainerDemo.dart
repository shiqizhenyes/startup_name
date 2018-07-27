import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        child: new Center(
          child: new Text("测试")
        ),
        width: 200.0,
        height: 300.0,
        decoration: new BoxDecoration(
          color: const Color.fromARGB(255, 230,230,250),
          borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
          border: new Border.all(
            color: const Color.fromARGB( 255,220,20,60),
            width: 10.0
          )
        ),
      ),
    );
    // TODO: implement build
  }


}