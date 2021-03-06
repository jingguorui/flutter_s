import 'package:flutter/material.dart';
import '../../component/navButton.dart';

class WorkBenchPage extends StatefulWidget {
  const WorkBenchPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<WorkBenchPage> {
//  前往新的界面
  void gotoNewPage(route) {
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        new ButtonBox('路由跳转相关页面', () {
          gotoNewPage('router/NavigationIndex');
        }),
        new ButtonBox('使用dio请求相关数据', () {
          gotoNewPage('router/NetWork');
        }),
        new ButtonBox('生命周期', () {
          gotoNewPage('router/lifeCycle');
        }),
        new ButtonBox('todoList', () {
          gotoNewPage('router/todoList');
        }),
        new ButtonBox('可拖动列表', () {
          gotoNewPage('router/ReorderableListViewDemo');
        }),
        new ButtonBox('登录', () {
          gotoNewPage('router/Login');
        }),
        new ButtonBox('动画', () {
          gotoNewPage('router/animation');
        }),
        new ButtonBox('redux', () {
          gotoNewPage('router/redux');
        }),
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
