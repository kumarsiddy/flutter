import 'package:flutter_redux_sample/src/redux/actions/actions.dart';

import 'app_state.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is Counter) {
    newState.counter = action.payload;
  }

  return newState;
}
