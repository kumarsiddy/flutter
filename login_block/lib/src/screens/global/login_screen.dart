import 'package:flutter/material.dart';
import 'package:loginblock/src/blocks/block_global.dart';

class LoginScreenGlobal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          getEmailField(),
          getPasswordField(),
          Container(margin: EdgeInsets.only(bottom: 8.0)),
          getSubmitButton(),
        ],
      ),
    );
  }

  Widget getEmailField() {
    return StreamBuilder(
      stream: block.emailStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: block.onEmailChange,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "you@example.com",
            labelText: "Email",
            errorText: snapshot.error,
          ),
        );
      },
    );
  }

  Widget getPasswordField() {
    return StreamBuilder(
      stream: block.passwordStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: block.onPasswordChange,
          decoration: InputDecoration(
            hintText: "password",
            labelText: "password",
            errorText: snapshot.error,
          ),
          obscureText: false,
        );
      },
    );
  }

  Widget getSubmitButton() {
    return RaisedButton(
      child: Text("Submit"),
      color: Colors.green,
      textColor: Colors.white,
      onPressed: onSubmitButtonClick,
    );
  }

  void onSubmitButtonClick() {}
}
