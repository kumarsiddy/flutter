import 'package:redux/redux.dart';
import 'package:redux_sample/src/redux/actions.dart';
import 'package:redux_sample/src/redux/fake_api.dart';
import 'package:redux_sample/src/redux/reducers.dart';

void fetchToDosMiddleWare(
  Store<AppState> store,
  action,
  NextDispatcher nextDispatcher,
) {
  if (action is FetchToDoAction) {
    print('hello from middleware');
    fetchToDosApi(false)
        .then((isSuccess) => store.dispatch(
            new FetchToDoSucceedAction([ToDo('Hello From Middleware!')])))
        .catchError(
            (error) => store.dispatch(new FetchToDoFailedAction(error)));
  }
  nextDispatcher(action);
}
