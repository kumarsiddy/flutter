import 'package:flutter/material.dart';
import 'package:loginblock/src/blocks/block_scoped.dart';
import 'package:loginblock/src/blocks/providers/provider.dart';

class LoginScreenScoped extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blocScoped = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          getEmailField(blocScoped),
          getPasswordField(blocScoped),
          Container(margin: EdgeInsets.only(bottom: 8.0)),
          getSubmitButton(blocScoped),
        ],
      ),
    );
  }

  Widget getEmailField(BlocScoped blocScoped) {
    return StreamBuilder(
      stream: blocScoped.emailStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: blocScoped.onEmailChange,
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

  Widget getPasswordField(BlocScoped blocScoped) {
    return StreamBuilder(
      stream: blocScoped.passwordStream,
      builder: (context, snapshot) {
        return TextField(
          onChanged: blocScoped.onPasswordChange,
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

  Widget getSubmitButton(BlocScoped blocScoped) {
    return StreamBuilder(
      stream: blocScoped.validateFormStream,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text("Submit"),
          color: Colors.green,
          textColor: Colors.white,
          onPressed: snapshot.hasData ? blocScoped.onSubmit : null,
        );
      },
    );
  }
}
