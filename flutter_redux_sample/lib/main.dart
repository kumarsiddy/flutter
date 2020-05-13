import 'package:flutter/cupertino.dart';
import 'package:flutter_redux_sample/src/app.dart';
import 'package:flutter_redux_sample/src/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_sample/src/redux/reducers.dart';

void main() {
  final _initialState = AppState(counter: 0);
  final Store<AppState> _store = Store<AppState>(reducer, initialState: _initialState);
  runApp(MyApp(store:_store));
}
