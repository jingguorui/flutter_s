import 'package:flutter/material.dart';
import '../models/cookbook.dart';

class ViewWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewBudilerWidgets();
  }
}

//轮播图的效果
class PageViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      pageSnapping: false,
      //是否添加弹跳效果默认值为true,可以当作是scrollview使用
      reverse: true,
      //是否开启倒立效果
      scrollDirection: Axis.vertical,
      //修改方向
      onPageChanged: (e) => debugPrint("aaaa$e"),
      //监听滚动到底几个内容里面
      controller: PageController(
        initialPage: 1, //设置第几个页面为默认值
//          keepPage: true,
        viewportFraction: 0.8, //给的一个间距 1是铺满
      ),
      children: <Widget>[
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: Text('one',
              style: TextStyle(fontSize: 40.0, color: Colors.white)),
        ),
        Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: Text('two',
              style: TextStyle(fontSize: 40.0, color: Colors.white)),
        ),
        Container(
          color: Colors.brown,
          alignment: Alignment.center,
          child: Text('three',
              style: TextStyle(fontSize: 40.0, color: Colors.white)),
        ),
      ],
    );
  }
}

//配置项，循环渲染
class PageViewBudilerWidgets extends StatelessWidget {
  Widget _pageItemBuild(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(lists[index].img,fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            children: <Widget>[
              Text(lists[index].name,style: TextStyle(fontWeight: FontWeight.w800),),
              Text(lists[index].favoriters,style: TextStyle(fontWeight: FontWeight.w100),)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount: lists.length, //多少条数据
      itemBuilder: _pageItemBuild,
    );
  }
}

//九宫格布局
class GrideViewWidgets extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),//0  0表示巨中
        child: Text("item $index",style: TextStyle(fontSize: 20.0,color: Colors.green)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,//定义轴，不写会报错,九宫格核心
      crossAxisSpacing:16 ,//x轴的间距
      mainAxisSpacing: 16,//y轴的间距
      scrollDirection: Axis.horizontal,//水平滚动,蛇形排列
      children: _buildTiles(100),
    );
  }
}

//另一种方式
class GridBuilderWidgets extends StatelessWidget{
  Widget _girdItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        lists[index].img,
        fit: BoxFit.cover,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: lists.length,
      itemBuilder:_girdItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,//最大150
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
    );
  }
}
