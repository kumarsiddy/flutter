import 'dart:async';

import 'package:loginblock/src/blocks/validators/Validators.dart';
import 'package:rxdart/rxdart.dart';

class BlocScoped extends Validators {
  final _emailSubject = BehaviorSubject<String>();
  final _passwordSubject = BehaviorSubject<String>();

  Stream<String> get emailStream =>
      _emailSubject.stream.transform(emailValidator);

  Stream<String> get passwordStream =>
      _passwordSubject.stream.transform(passwordValidator);

  Stream<bool> get validateFormStream =>
      Rx.combineLatest2(emailStream, passwordStream, (e, p) => true);

  Function(String) get onEmailChange => _emailSubject.add;

  Function(String) get onPasswordChange => _passwordSubject.add;

  onSubmit() {
    print(_emailSubject.value);
    print(_passwordSubject.value);
  }

  dispose() {
    _emailSubject.close();
    _passwordSubject.close();
  }
}
