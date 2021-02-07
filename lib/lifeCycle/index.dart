import 'package:flutter/material.dart';
/*
* 生命周期
* */
class LifeCycle extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}
class _ScaffoldRouteState extends State<LifeCycle> {
  int _num = 0;

  @override
  void initState(){
    super.initState();
    _num = 2;
    print('initState---初始化时执行一次');
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print('didChangeDependencies---初始化时执行一次');
  }

  @override
  void didUpdateWidget(covariant LifeCycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void setState(fn) {
    super.setState(fn);
    print('setState');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("App Name$_num"),
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),
      body: Text('$_num')
    );
  }
  void _onAdd(){
    print('_onAdd');
    setState(() {
      _num++;
    });
  }


}
