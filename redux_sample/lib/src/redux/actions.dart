import 'package:redux_sample/src/redux/reducers.dart';

class AddToDoAction {
  final ToDo toDo;

  AddToDoAction(this.toDo);
}

enum VisibilityFilter { showAll, showActive, showCompleted }

class FetchToDoAction {}

class FetchToDoSucceedAction {
  final List<ToDo> fetchedToDos;

  FetchToDoSucceedAction(this.fetchedToDos);
}

class FetchToDoFailedAction {
  final Exception error;
  FetchToDoFailedAction(this.error);
}
