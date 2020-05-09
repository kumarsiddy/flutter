import 'dart:async';

class Validators {
  final emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    print(email);
    if (email.contains("@")) {
      sink.add(email);
    } else {
      sink.addError("Please enter valid email!");
    }
  });

  final passwordValidator = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    if (password.length > 4) {
      sink.add(password);
    } else {
      sink.addError("Please enter valid password!");
    }
  });
}
