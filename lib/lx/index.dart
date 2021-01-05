import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
Dio dio =  Dio();
/*
* 请求，未完成
* todo
* */
class Lx extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}
class _ScaffoldRouteState extends State<Lx> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("App Name"),
        actions: <Widget>[ //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      // drawer: new MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar( // 底部导航
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  void _onAdd()async{
    var response = await dio.post("http://dd-test.gcnao.cn/gateway/account/login",data:{
        'username': '13751430001',
        'password': 'a123456',
        'accountType': 'PERSONAL',
        'captchaType': 'PERSON_LOGIN',
        'captcha': '1234',
    });
    // var response = await dio.get("http://dd-test.gcnao.cn/gateway/account/login",data:{
    //   'username': '13751430001',
    //   'password': 'a123456',
    //   'accountType': 'PERSONAL',
    //   'captchaType': 'PERSON_LOGIN',
    //   'captcha': '1234',
    // });
    print(response);
  }
}
