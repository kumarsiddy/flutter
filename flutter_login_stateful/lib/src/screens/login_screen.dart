import 'package:flutter/material.dart';
import 'package:flutterloginstateful/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<LoginScreen> with ValidationMixin{
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            getEmailField(),
            getPasswordField(),
            Container(
              margin: EdgeInsets.only(bottom: 16.0),
            ),
            getSubmitButton()
          ],
        ),
      ),
    );
  }

  Widget getEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: "Email", hintText: "you@example.com"),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget getPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(labelText: "Password", hintText: "password"),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget getSubmitButton() {
    return RaisedButton(
      child: Text("Submit"),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();

          print("value of email is $email and password is $password");
        }
      },
      color: Colors.green,
      textColor: Colors.white,
      padding: EdgeInsets.all(4.0),
    );
  }
}
