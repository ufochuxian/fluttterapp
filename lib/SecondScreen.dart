
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("第二个页面"),
          onPressed: () {
            //返回前一个页面
            Navigator.pop(context);
          },
        ),

      ),
    );
  }
}