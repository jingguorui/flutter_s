import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RadioWidgets();
  }
}

class RadioWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16/9,
      child: Container(
        color:Colors.yellow,
      ),
    );
  }
}
//span
class ReachTexts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text:TextSpan(
          text: '程序员',
          style: TextStyle(
              color: Colors.red,
              fontSize: 40.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800
          ),
          children:[
            TextSpan(
                text: "aaa",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.pink
                )
            ),
            TextSpan(
                text: "aaa",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.pink
                )
            )
          ]
      ),

    );
  }
}
//box
class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=248222817,375547763&fm=26&gp=0.jpg'),
              alignment: Alignment.topLeft,
              fit: BoxFit.cover, //平铺的效果
              colorFilter: ColorFilter.mode(
                //平铺的背景
                  Colors.black.withOpacity(0.1),
                  BlendMode.darken))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //主轴
        crossAxisAlignment: CrossAxisAlignment.stretch, //侧轴
        children: <Widget>[
          Container(
            child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Colors.black87,
                      blurRadius: 25.0,
                      spreadRadius: 10.0)
                ]),
          ),
          Container(
            child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Colors.black87,
                      blurRadius: 25.0,
                      spreadRadius: 10.0)
                ],
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )), //线性渐变
          ),
          Container(
            child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.0, 16.0),
                      color: Colors.black87,
                      blurRadius: 25.0,
                      spreadRadius: 10.0)
                ],
                shape: BoxShape.circle,
                //变成圆形
                gradient: RadialGradient(//径向渐变
                  colors: [Colors.yellow, Colors.red],
                )
            ),
          ),
        ],
      ),
    );
  }
}
//text
class TextWidget extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 46.0,
  );
  final String _product = "flutter";
  final String _company = "guge";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "$_product是一个$_company撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨asdasdsasdasd丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁撒丁岛萨丁",
      textAlign: TextAlign.left, //文本对其的方式
      style: _textStyle, //文本的样式
      overflow: TextOverflow.ellipsis, //超出的直接显示三个点
      maxLines: 3, //显示多少行
    );
  }
}