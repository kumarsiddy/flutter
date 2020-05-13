class AppState {
  int counter;

  AppState({this.counter});

  AppState.fromAppState(AppState another) {
    counter = another.counter;
  }
}
