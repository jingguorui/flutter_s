import 'package:flutter/material.dart';

//布局
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
//          IconBadge(Icons.access_alarm,size:60.0),
//          IconBadge(Icons.access_alarm,size:40.0),
//          IconBadge(Icons.access_alarm,size:40.0),
//          IconBadge(Icons.access_alarm,size:40.0),
          ConstrainedBoxWidgets()
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;

  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.black,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(255, 0, 0, 0.1),
    );
  }
}

//
class ConstrainedBoxWidgets extends StatelessWidget {
  _onClick(){
    print(1111111);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          maxWidth: 100,
        ),
        child: Container(
//        alignment: Alignment(0, 0),
            color: Color.fromRGBO(255, 0, 0, 0.1),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 200,
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0))
                  ),
                ),
                // SizedBox(
                //   width: 300,
                //   height: 200,
                //   child: GestureDetector(
                //     onTap: _onClick,//写入方法名称就可以了，但是是无参的
                //     child: Text("dianji"),
                //   )
                // )
//                Positioned(
//                  left: 20.0,
//                  top: 20.0,
//                  child: Icon(
//                    Icons.star,
//                    color: Colors.yellow,
//                    size: 40.0,
//                  ),
//                )
              ],
            )));
  }
}
