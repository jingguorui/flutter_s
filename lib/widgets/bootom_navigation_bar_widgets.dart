import 'package:flutter/material.dart';

class BottomNavigationBarWidgets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarWidgets();
  }
}

class _BottomNavigationBarWidgets extends State<BottomNavigationBarWidgets> {
  int _currentIndex = 0;

  void _onTapHander(int index) {
    setState(() {
      print(index);
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTapHander,
      //修改的当前高亮显示图标
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("大全"),
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text("地图"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("我的"),
        ),
      ],
    );
  }
}
