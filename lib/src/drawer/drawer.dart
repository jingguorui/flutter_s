import 'package:flutter/material.dart';

//右边抽屉效果
class Drawers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//        DrawerHeader(
//          child: Text("drawer Header"),
//          decoration: BoxDecoration(
//            color: Colors.grey[100]
//          ),//装饰
//        ),
          UserAccountsDrawerHeader(
              accountName:
              Text("jingGuoRui", style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("jingguroui9@163.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/63eb7a5a0bcfd3f16bc82df92d60d6d7_1.jpg'),
              ),
              decoration:BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                      image: new ExactAssetImage('images/63eb7a5a0bcfd3f16bc82df92d60d6d7_1.jpg'),
                      fit: BoxFit.cover,  //将图片铺满
                      colorFilter: ColorFilter.mode(
                          Colors.yellow[400].withOpacity(0.0),//设置图片的背景颜色以及透明度
                          BlendMode.hardLight
                      )
                  )
              )
          ),
          ListTile(
            title: Text("message", textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text("setting", textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black),
            onTap: ()=>Navigator.pop(context),
          ),
          ListTile(
            title: Text("message", textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black),
            onTap: ()=>Navigator.pop(context),
          )
        ],
      ),
    );
  }
}