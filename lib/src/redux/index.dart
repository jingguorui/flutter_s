/*使用网络请求*/
import 'package:flutter/material.dart';
import '../../component/CustomScaffold.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../../component/navButton.dart';

// One simple action: Increment
enum Actions { Increment }

// The reducer, which takes the previous count and increments it in response
// to an Increment action.
int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) {
    return state + 1;
  }

  return state;
}

class Redux extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<Redux> {
  final store = Store<int>(counterReducer, initialState: 0);

  @override
  Widget build(BuildContext context) {
    return new CustomScaffold(
      'router/redux',
      new Column(
        children: [
          new Text('111'),
          StoreProvider(store: store,
              child: new Column(
                children: [
                  Text('222'),
                  StoreConnector<int, String>(
                    converter: (store) => store.state.toString(),
                    builder: (context, count) {
                      return Text(
                        'redux中的状态: $count',
                      );
                    },
                  ),
                  new NavButton('点击修改redux中的状态+', () {
                    store.dispatch(Actions.Increment);
                  }),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
