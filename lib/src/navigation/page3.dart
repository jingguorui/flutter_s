/**
 * 向下一个页面传参，不需要注册
 * */

import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter进阶之旅"),
        ),
        body: new Center(
            child: new RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    //_代表参数为空
                    builder: (_) => new DynamicNaviattionPage(
                          username: "jingguorui",
                          password: "123456",
                        ))).then((value) {
//                           路由返回携带的参数
              showDialog(
                  context: context,
                  child: new AlertDialog(
                    content: new Text(value),
                  ));
            });
          },
          child: new Text("动态路由传参"),
        )));
  }
}

class DynamicNaviattionPage extends StatelessWidget {
  var username;
  var password;

  DynamicNaviattionPage({Key key, this.username, this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("动态路由"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new MaterialButton(
              onPressed: () {
                Navigator.pop(context, "未查询到改该用户信息jingguorui");
              },
              child: new Text("点我返回"),
              color: Colors.lightGreen,
            ),
            new Text("上页传递过来的username   $username"),
            new Text("上页传递过来的password   $password"),
          ],
        ),
      ),
    );
  }
}
