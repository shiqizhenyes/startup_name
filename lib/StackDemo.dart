import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    var image = "http://img2.cxtuku.com/00/13/12/s97783873391.jpg";
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("层叠布局示例"),
        centerTitle: true,
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            new Image.network(image),
            new Positioned(
                left: 35.0,
                right: 35.0,
                top: 45.0,
                child: new Text("'Whatever is worth doing is worth doing well. ๑•ิ.•ั๑'",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontFamily: "monospace"
                  ),

                )

            )
            
          ],
          
        ),
      ),

    );
    // TODO: implement build
  }

}