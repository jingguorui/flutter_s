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
              Text("Mr jing", style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("jingguroui@9163.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1694681277,1453280371&fm=26&gp=0.jpg"),
              ),
              decoration:BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                      image: NetworkImage("https://dss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1035415831,1465727770&fm=26&gp=0.jpg"),
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