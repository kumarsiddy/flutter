import 'package:flutter/material.dart';
import 'package:flutterloginstateful/src/screens/login_screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Log me in",
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}