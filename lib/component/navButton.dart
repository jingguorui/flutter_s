/*
* 组件的封装
* */
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String text;
  final VoidCallback onClick;
  NavButton(this.text,this.onClick);

  Widget build(BuildContext context) {
    return new RaisedButton(
        child: Text('$text'),
        onPressed: onClick,
    );
  }
}
