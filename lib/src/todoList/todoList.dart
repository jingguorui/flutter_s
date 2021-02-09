import 'package:flutter/material.dart';
import '../../component/CustomScaffold.dart';
import '../../component/navButton.dart';
//新增代码
class TodoModel {
  TodoModel({
    this.id,
    this.title,
    this.complete = false,
  });

  int id;
  String title;
  bool complete;
}
class TodoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<TodoList> {
  var _username = new TextEditingController();
  List<Widget> exampleWidget = [];
  List<TodoModel> todo = [];
  int id = 0;

  void clickAddButton(){
    if(this._username.text==''){
      return;
    }
    TodoModel item = TodoModel(
      id: id++,
      title: this._username.text,
      complete: false,
    );

    setState(() {
      this._username.text = '';
      todo.add(item);
    });
  }

  void deleteButton(index){
    List newTodo = todo;
    newTodo.remove(todo[index]);
    setState((){
      todo=newTodo;
    });
  }

  void upDate(i){
    List newTodo = todo;
    setState(() {
      this._username.text = newTodo[i].title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new CustomScaffold(
      'router/todoList',
      new Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: this._username,
              onChanged: (value){
                setState(() {
                  this._username.text = value;
                });
              },
              onTap:clickAddButton,
              decoration: InputDecoration(
                  hintText: "请输入用户名",
                  suffixIcon: Icon(Icons.people_alt_rounded)),
            ),
          ),
          Text(this._username.text),
          new Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              TodoModel item = todo[index];
              return ListTile(
                title: new Row(
                  children: [
                    Text(item.title),
                    NavButton('删除',(){
                      deleteButton(index);
                    }),
                    NavButton('编辑',(){
                      upDate(index);
                    }),
                  ],
                ),
              );
            }, itemCount: todo.length
            ),
          )
        ],
      ),
    );
  }
}
