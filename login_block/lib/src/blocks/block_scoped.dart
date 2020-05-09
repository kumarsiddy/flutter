import 'dart:async';

import 'package:loginblock/src/blocks/validators/Validators.dart';

class BlocScoped extends Validators {
  final _emailController = StreamController<String>.broadcast();
  final _passwordController = StreamController<String>.broadcast();

  Stream<String> get emailStream =>
      _emailController.stream.transform(emailValidator);

  Stream<String> get passwordStream =>
      _passwordController.stream.transform(passwordValidator);

  Function(String) get onEmailChange => _emailController.sink.add;

  Function(String) get onPasswordChange => _passwordController.sink.add;

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}
