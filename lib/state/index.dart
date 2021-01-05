import 'package:flutter/material.dart';
import './childrenState.dart';
import './fatherState.dart';
import './lxState.dart';


class Statesss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("进阶之旅"),
      ),
      body: LxState(),
    );
  }
}
