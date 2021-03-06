import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_sample/src/redux/actions.dart';
import 'package:redux_sample/src/redux/middleware.dart';
import 'package:redux_sample/src/redux/reducers.dart';

void main() {
  final store = new Store<AppState>(
    toDosReducer,
    initialState: new AppState(),
    middleware: [fetchToDosMiddleWare],
  );

  print(store.state.toDos); // Prints an empty list
  print(store.state.visibilityFilter); // Prints "VisibilityFilter.showAll"

  store.dispatch(new AddToDoAction(new ToDo("Hello")));
  store.dispatch(VisibilityFilter.showActive);

  print(store.state.toDos);
  print(store.state.visibilityFilter);

  print('requesting toDos from api');
  store.dispatch(FetchToDoAction());

  store.state.toDos.forEach((element) {
    print(element.task);
  });

//  runApp(TODOListApp());
}

class TODOListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TO DO List',
      home: Scaffold(),
    );
  }
}
