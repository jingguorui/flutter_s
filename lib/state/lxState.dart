import 'package:flutter/material.dart';

class LxState extends StatefulWidget{
  @override
  _LxState createState() => new _LxState();
}

class _LxState extends State<LxState>{
  int _num = 0;

  @override
  Widget build(BuildContext context){
    return new GestureDetector(
      onTap: (){
        setState(() {
          _num++;
        });
      },
      child:  new Container(
          // width: 20,
          // height: 200.0,
          child: new Text('1111111111-------$_num'*6)
      ),
    );
  }
}
