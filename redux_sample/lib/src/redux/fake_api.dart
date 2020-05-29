Future<bool> fetchToDosApi(bool whatDoYouNeed) async {
  if (whatDoYouNeed) return Future.value(true);
  throw Exception('Exception occurred');
}
