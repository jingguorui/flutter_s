import 'package:flutter/material.dart';
import './listview.dart';
import './drawer_widgets.dart';
import './bootom_navigation_bar_widgets.dart';
import './basic_widgets.dart';
import './view_widgets.dart';
import './layout_widgets.dart';
import './Hellow.dart';
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
