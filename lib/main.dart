import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:developer' as developer;
import 'package:flutter/rendering.dart';
import 'package:flutterapp/FirstScreen.dart';
import 'package:flutterapp/SecondScreen.dart';

void main() {
  // debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen()
      },
    );
  }
}

class MyCavansPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = new Paint();
    paint.color = Colors.amber;
    canvas.drawCircle(Offset(100.0, 200.0), 40, paint);
    Paint paintRect = Paint();
    paintRect.color = Colors.lightBlue;
    Rect react = Rect.fromPoints(Offset(300, 300), Offset(200, 500));
    canvas.drawRect(react, paintRect);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => false;
}

class _MyCanvas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomPaint(
        painter: MyCavansPainter(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
        onPressed: () {
          developer.log("被点击了");
        },
        child: new Text(label));
  }
}

//使用自定义组件,在flutter中推荐使用已有widget"组合"的方式来进行自定义view
@override
Widget build(BuildContext context) {
  return new Center(
    child: new CustomButton("hello"),
  );
}

TextStyle style = new TextStyle(color: Colors.red, fontSize: 30);

//1、 定义一个数据源
final items = new List<String>.generate(1000, (index) => "Item $index");

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ListView Builder用于将数据转换成Widget控件
    return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return new ListTile(
          title: new Text('${items[index]}'),
        );
      },
    );
  }
}

class ContainerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //这里记住需要使用return语句，不然会报错
    return new ContainerWrapper();
  }
}

class ContainerWrapper extends State<ContainerWidget> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: color,
      height: 200,
      width: 300,
      child: GestureDetector(
        onTap: () {
          setState(() {
            color = Colors.yellow;
          });
        },
      ),
    );
  }
}
