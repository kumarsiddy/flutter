import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Async Redux",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Async Redux"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Counter",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
