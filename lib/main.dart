import 'package:flutter/material.dart';
import './widgets/listview.dart';
import './widgets/drawer_widgets.dart';
import './widgets/bootom_navigation_bar_widgets.dart';
import './widgets/basic_widgets.dart';
import './widgets/view_widgets.dart';
import './widgets/layout_widgets.dart';
import './widgets/Hellow.dart';

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
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(0, 0, 255, 0.5), //定义水波纹的效果
        splashColor: Colors.red, //定义tabbar点击时的背景效果
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            //主屏幕左上角的三条线，如果添加了抽屉效果，会自动添加三斜线效果
//            leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: 'menu',
//              onPressed: () => debugPrint("menu is press"),
//            ),

//          配置主屏幕右上角的search效果
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint("menu search is press"),
              )
            ],
            title: Text('经过瑞'),
            elevation: 10.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.red, //未被选中的颜色
              indicatorColor: Colors.green, //tabbar选中时的下划线
              indicatorSize: TabBarIndicatorSize.label, //下划线的布局，长度
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_cafe)),
                Tab(icon: Icon(Icons.local_bar)),
                Tab(icon: Icon(Icons.local_airport)),
              ],
            ),
          ),
//          body:ListviewWidget()//渲染页面菜谱
          body: TabBarView(
            children: <Widget>[
              ListviewWidget(),
              ViewWidgets(),
              ConstrainedBoxWidgets()
            ],
          ),
//          endDrawer: Drawers(),//定义两个不同方向的drawer
          drawer: Drawers(),
          bottomNavigationBar: BottomNavigationBarWidgets()),
    );
  }
}
