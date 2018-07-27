import 'package:flutter/material.dart';
import 'package:startup_name/ContainerDemo.dart';
import 'package:startup_name/TextDemo.dart';
import 'package:startup_name/RawAndColumnDemo.dart';
import 'package:startup_name/StackDemo.dart';
import 'package:startup_name/ListViewDemo.dart';
import 'package:startup_name/RandomWords.dart';
class HomeWidget extends StatefulWidget {

  @override
  HomeState createState() => new HomeState();

}

class HomeState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {

    return new Center(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter 学习"),
          centerTitle: true,
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _textDemo,
                      child: new Text("文字示例")),
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _stackDemo,
                      child: new Text("层叠布局示例")),
                ],
              ),
              new Row(
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _rawAndColumnDemo,
                      child: new Text("垂直和横向布局示例")),
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _randomWords,
                      child: new Text("随机单词示例"))
                ],
              )
            ],
          ),
        )
      ),
    );
  }

  void _textDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new TextDemo(),
      );
    }));
  }


  void _stackDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new StackDemo(),
      );
    }));
  }


  void _rawAndColumnDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new RawAndColumnDemo(),
      );
    }));
  }


  void _randomWords() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new RandomWords(),
      );
    }));
  }
}
