import 'package:flutter/material.dart';
import './src/navigation/page1.dart';
import './src/navigation/page2.dart';
import './src/navigation/index.dart';
import './src/index.dart';
import './src/network/index.dart';
import './src/lifeCycle/lifeCycle.dart';
import './src/todoList/todoList.dart';
import './src/ReorderableListViewDemo/ReorderableListViewDemo.dart';
void main() {
  runApp(App());
}

/*
* 自定义widget
* 分为有状态组件和无状态组件
*
* */

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //定义整个页面
      debugShowCheckedModeBanner: false,
      home: new AppBarPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(0, 0, 255, 0.2), //定义水波纹的效果
        splashColor: Colors.blue, //定义tabbar点击时的背景效果
      ),
        // 静态路由注册
        routes: <String, WidgetBuilder>{
          'router/NavigationIndex': (_) => new NavigationIndex(),
          'router/NavigationIndex/notParams': (_) => new FlutterDemo(),
          'router/NavigationIndex/Params': (_) => new DongtaiRouter(),
          'router/NavigationIndex/new_page_with_callback': (_) => new StaticNavigatorPageWithResult(),
          'router/NavigationIndex/new_page': (_) => new StaticNavigatorPage(),
          'router/NetWork': (_) => new NetWorkPage(),
          'router/lifeCycle': (_) => new LifeCycle(),
          'router/todoList': (_) => new TodoList(),
          'router/ReorderableListViewDemo': (_) => new ReorderableListViewDemo(),
        },
    );
  }
}

