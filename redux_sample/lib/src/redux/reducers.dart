import 'package:redux_sample/src/redux/actions.dart';

class ToDo {
  String task;
  bool completed;

  ToDo(this.task, {this.completed = false});
}

class AppState {
  List<ToDo> toDos;
  VisibilityFilter visibilityFilter;

  AppState(
      {this.toDos = const [],
      this.visibilityFilter = VisibilityFilter.showAll});
}

AppState toDosReducer(AppState state, action) {
  if (action is AddToDoAction) {
    return new AppState(
        toDos: new List.from(state.toDos)..add(action.toDo),
        visibilityFilter: state.visibilityFilter);
  } else if (action is VisibilityFilter) {
    return new AppState(toDos: state.toDos, visibilityFilter: action);
  }
  return state;
}
