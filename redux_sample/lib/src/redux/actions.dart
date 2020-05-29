import 'package:redux_sample/src/redux/reducers.dart';

class AddToDoAction {
  final ToDo toDo;

  AddToDoAction(this.toDo);
}

enum VisibilityFilter { showAll, showActive, showCompleted }
