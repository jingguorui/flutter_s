/**
 * 向上一个页面传参
 * */
import 'package:flutter/material.dart';


class DongtaiRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter进阶之旅"),
      ),
      body: new Center(
          child: new RaisedButton(
              child: new Text("静态路由接收下一页返回值"),
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('router/new_page_with_callback')
                    .then((value) {
                  showDialog(
                      context: context,
                      child: new AlertDialog(
                        content: new Text(value),
                      ));
                });
              })),
    );
  }
}
class StaticNavigatorPageWithResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("静态路由带返回参数"),
      ),
      body: new Center(
        child: new OutlineButton(
          onPressed: () {
            Navigator.of(context).pop("页面结束后返回的数据");
          },
          child: Text("点我返回上个页面结束后返回的数据"),
        ),
      ),
    );
  }
}
