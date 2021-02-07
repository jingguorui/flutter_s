import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Text('UserInfoPage'),
    );
  }
}