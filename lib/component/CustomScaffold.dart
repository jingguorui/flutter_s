import 'package:flutter/material.dart';
// 自定义封装的组件

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget child;

  CustomScaffold(this.title, this.child);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("$title"),
      ),
      body: child,
    );
  }
}