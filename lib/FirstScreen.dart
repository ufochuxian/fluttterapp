

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      appBar: AppBar(
        title: Text('第一个页面'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch Screen',style: TextStyle(color: Colors.amber),),
          onPressed: () {
            //跳转到第二个页面
            Navigator.pushNamed(context, '/second');
          },
        ),

      ),

    );
  }




}