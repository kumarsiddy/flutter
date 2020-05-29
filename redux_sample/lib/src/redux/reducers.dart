import 'package:redux_sample/src/redux/actions.dart';

class ToDo {
  String task;
  bool completed;

  ToDo(this.task, {this.completed = false});
}

class AppState {
  List<ToDo> toDos;
  VisibilityFilter visibilityFilter;
  bool isFetching;
  Exception error;

  AppState({
    this.toDos = const [],
    this.visibilityFilter = VisibilityFilter.showAll,
    this.isFetching = false,
    this.error,
  });
}

AppState toDosReducer(AppState state, action) {
  if (action is AddToDoAction) {
    return new AppState(
      toDos: new List.from(state.toDos)..add(action.toDo),
      visibilityFilter: state.visibilityFilter,
    );
  } else if (action is VisibilityFilter) {
    return new AppState(toDos: state.toDos, visibilityFilter: action);
  } else if (action is FetchToDoAction) {
    return new AppState(
      toDos: state.toDos,
      visibilityFilter: state.visibilityFilter,
      isFetching: true,
      error: null,
    );
  } else if (action is FetchToDoSucceedAction) {
    return new AppState(
      toDos: action.fetchedToDos,
      isFetching: false,
      error: null,
      visibilityFilter: state.visibilityFilter,
    );
  } else if (action is FetchToDoFailedAction) {
    return new AppState(
      toDos: state.toDos,
      visibilityFilter: state.visibilityFilter,
      isFetching: false,
      error: action.error,
    );
  }
  return state;
}
