import 'package:flutter/material.dart';
import './work/message.dart';
import './work/userInfo.dart';
import './work/workBench.dart';

class AppBarPage extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<AppBarPage> {
  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    super.initState();
    addBottomNavigationBarItem();
  }

  void addBottomNavigationBarItem() {
    pages..add(new MessagePage())..add(new WorkBenchPage())..add(new UserInfoPage());
  }

  // 当前bottomNavigation下标
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("主页面"),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body: pages[_selectedIndex],
      drawer: new Text("111"), //抽屉
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('消息')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('工作台')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('个人信息')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }
}
