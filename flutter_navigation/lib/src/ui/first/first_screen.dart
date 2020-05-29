import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This is first screen"),
        RaisedButton(
          child: Text("Second Screen"),
          onPressed: () {
            Navigator.pushNamed(context, "routeName");
          },
        ),
      ],
    );
  }
}
