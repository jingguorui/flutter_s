import 'package:flutter/material.dart';
import '../../component/navButton.dart';

class WorkBenchPage extends StatefulWidget {
  const WorkBenchPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<WorkBenchPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        new ButtonBox('路由跳转相关页面', () {
          Navigator.of(context).pushNamed('router/NavigationIndex');
        }),
        new ButtonBox('使用dio请求相关数据', () {
          Navigator.of(context).pushNamed('router/NetWork');
        }),
        new ButtonBox('33', () {}),
      ],
    );
  }
}


// 自定义封装的组件
class ButtonBox extends StatelessWidget {
  final String str;
  final VoidCallback callback;

  ButtonBox(this.str, this.callback);

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      color: Colors.amber[500],
      child: new NavButton(str, callback),
    );
  }
}
