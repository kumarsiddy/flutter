import 'dart:async';

class Validators {
  final emailValidator =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    if (email.length > 4 && email.contains("@")) {
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
