/*使用网络请求*/
import 'package:flutter/material.dart';
import '../../component/navButton.dart';
import '../../apiHelper/Apihelper.dart';

class NetWorkPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<NetWorkPage> {
  String str='';
  void getData() {
    getRequest((data) {
      print("data$data");
      setState(() {
        str=data.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("router/NetWork/index"),
      ),
      body: new Text('$str'),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.add),
          onPressed: getData),
    );
  }
}
