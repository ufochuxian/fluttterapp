import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'dart:developer' as developer;
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      showPerformanceOverlay: true,
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: Center(
          //child: new Text(wordPair.asPascalCase),
          child:  _MyCanvas(),
        ),
      ),
    );
  }
}


class MyCavansPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = new Paint();
    paint.color = Colors.amber;
    canvas.drawCircle(Offset(100.0,200.0), 40, paint);
    Paint paintRect = Paint();
    paintRect.color = Colors.lightBlue;
    Rect react = Rect.fromPoints(Offset(100,100), Offset(200,200));
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