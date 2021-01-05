import 'package:flutter/material.dart';
import './router/page1.dart';
import './router/page2.dart';
import './router/page3.dart';
import './widgets/Home.dart'; //
import './state/index.dart';
import './lx/index.dart';
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
      home: new Lx(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(0, 0, 255, 0.2), //定义水波纹的效果
        splashColor: Colors.blue, //定义tabbar点击时的背景效果
      ),
        // 静态路由注册
        routes: <String, WidgetBuilder>{
          'router/new_page': (_) => new StaticNavigatorPage(),
          'router/new_page_with_callback': (_) => new StaticNavigatorPageWithResult()
        }
    );
  }
}

