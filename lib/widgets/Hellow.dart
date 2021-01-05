import 'package:flutter/material.dart';

class Hellow extends StatelessWidget {
  @override //覆盖
  Widget build(BuildContext context) {
    //类似render
    // TODO: implement build
    return Center(
      child: Text(
        'hellow word4',
        textDirection: TextDirection.ltr, //剧中样式
        style: TextStyle(
          //样式
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.red),
      ),
    );
  }
}