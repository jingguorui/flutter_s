import 'package:flutter/material.dart';
import '../../component/navButton.dart';
import './page3.dart';
class NavigationIndex extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<NavigationIndex> {
//  前往新的界面
  void goToNewPage() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          //_代表参数为空
            builder: (_) => new DynamicNaviattionPage(
              username: "xiedong1111",
              password: "123456",
            ))).then((value) {
      showDialog(
          context: context,
          child: new AlertDialog(
            content: new Text(value),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("router/NavigationIndex"),
      ),
      body: new Column(
        children: <Widget>[
          new NavButton('不传参跳转', (){
            Navigator.of(context).pushNamed('router/NavigationIndex/notParams');
          }),
          new NavButton('跳转传参', (){
            Navigator.of(context).pushNamed('router/NavigationIndex/Params');
          }),
          new NavButton('不注册路由进行跳转',goToNewPage),
        ],
      ),
    );
  }
}
