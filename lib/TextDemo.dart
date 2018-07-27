import 'package:flutter/material.dart';
class TextDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("文本示例"),
        centerTitle: true,
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text("红色+黑色+删除线+25号",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 255,0,0),
                  decoration: TextDecoration.lineThrough,
                  decorationColor: const Color.fromARGB(255,65,105,225),
                  fontSize: 25.0
              ),
            ),
            new Text("橙色+下划线+24号",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 255,165,0),
                  decoration: TextDecoration.underline,
                  decorationColor: const Color.fromARGB(255,65,105,225),
                  fontSize: 24.0
              ),
            ),
            new Text("虚线+上划线+23号+倾斜",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 255,165,0),
                  decoration: TextDecoration.overline,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: const Color.fromARGB(255,65,105,225),
                  fontSize: 23.0,
                fontStyle: FontStyle.italic
              ),
            ),
            new Text("serif+字体+23号",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 255,165,0),
                  decorationColor: const Color.fromARGB(255,65,105,225),
                  fontSize: 23.0,
                  fontStyle: FontStyle.normal,
                fontFamily: 'serif'
              ),
            ),
            new Text("monospace+字体+24号+加粗",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 255,165,0),
                  decorationColor: const Color.fromARGB(255,65,105,225),
                  fontSize: 23.0,
                  fontFamily: 'monospace',
                fontWeight: FontWeight.bold
              ),
            ),
            new Text("天蓝色+2行跨度+25号",
              style: new TextStyle(
                  color: const Color.fromARGB(255, 0,191,255),
                  height: 2.0,
                  fontSize: 25.0,
              ),
            ),
            new Text("2个字母间隔+24号",
              style: new TextStyle(
                color: const Color.fromARGB(255, 0,191,255),
                fontSize: 24.0,
                letterSpacing: 2.0
              ),
            )
          ],
        ),
      )

    );
    // TODO: implement build
  }

}