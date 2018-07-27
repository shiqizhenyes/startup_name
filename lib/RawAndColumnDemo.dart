import 'package:flutter/material.dart';
class RawAndColumnDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        title: new Text("布局示例"),
      ),
      body: new Row(
        children: <Widget>[

          new RaisedButton(onPressed: () {
            print("点击的红色按钮");
          },
          color: Colors.red),
          new Flexible(
              flex: 1,
              child: new RaisedButton(onPressed: (){
                print('点击黄色按钮事件');
              },
              color: Colors.amber)
          ),
          new RaisedButton(onPressed: () {
            print("点击粉色按钮事件");
          },
          color: Colors.pink),
        ],
      ),

    );

    // TODO: implement build
  }

}