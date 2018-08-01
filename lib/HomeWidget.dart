import 'package:flutter/material.dart';
import 'package:startup_name/ContainerDemo.dart';
import 'package:startup_name/TextDemo.dart';
import 'package:startup_name/RawAndColumnDemo.dart';
import 'package:startup_name/StackDemo.dart';
import 'package:startup_name/ListViewDemo.dart';
import 'package:startup_name/RandomWords.dart';
import 'package:startup_name/CenterDemo.dart';
import 'package:startup_name/PositionDemo.dart';
import 'package:startup_name/MarginAndPaddingDemo.dart';
import 'package:startup_name/DecoratedBoxDemo.dart';
import 'package:startup_name/SizeAndAspectRatioDemo.dart';
import 'package:startup_name/OpacityDemo.dart';
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
              ),
              new Row(
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _centerDemo,
                      child: new Text("居中布局")),
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _positionDemo,
                      child: new Text("控件位置示例"))
                ],
              ),
              new Row(
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _marginAndPaddingDemo,
                      child: new Text("内边距和外边距示例")),
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _decoratedBoxDemo,
                      child: new Text("装饰容器示例")),
//                  new MaterialButton(
//                      color: Colors.deepOrangeAccent,
//                      onPressed: _positionDemo,
//                      child: new Text("控件位置示例"))
                ],
              ),
              new Row(
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _sizeAndAspectRatioDemo,
                      child: new Text("强制大小和比例显示")),
                  new MaterialButton(
                      color: Colors.deepOrangeAccent,
                      onPressed: _opacityDemo,
                      child: new Text("透明度")),
//                  new MaterialButton(
//                      color: Colors.deepOrangeAccent,
//                      onPressed: _positionDemo,
//                      child: new Text("控件位置示例"))
                ],
              ),
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


  void _positionDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new PositionDemo(),
      );
    }));
  }

  void _marginAndPaddingDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new MarginAndPaddingDemo(),
      );
    }));
  }
  void _decoratedBoxDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new DecoratedBoxDemo(),
      );
    }));
  }


  void _centerDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new CenterDemo(),
      );
    }));
  }

  void _sizeAndAspectRatioDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new SizeAndAspectRatioDemo(),
      );
    }));
  }

  void _opacityDemo() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        body: new OpacityDemo(),
      );
    }));
  }
}
