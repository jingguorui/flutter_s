import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Text('message'),
    );
  }
}