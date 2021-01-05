import 'package:flutter/material.dart';
import '../models/cookbook.dart';

class ListviewWidget extends StatelessWidget{
  //方法
  Widget _itemListBuilter(BuildContext context,int index){
//    return Text(lists[index].name);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(lists[index].img),
          SizedBox(height: 10),
          Text(
            lists[index].name,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            '访问:'+lists[index].all_click,
            style: Theme.of(context).textTheme.subhead,
          ),
          Text(
            '收藏:'+lists[index].favoriters,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(height: 50),

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView.builder(
        itemCount: lists.length,
        itemBuilder: _itemListBuilter//自定义函数
    );
  }
}