import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This is second screen"),
        RaisedButton(
          child: Text("Go Back"),
          onPressed: () {},
        ),
      ],
    );
  }
}
