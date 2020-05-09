import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginblock/src/blocks/providers/provider.dart';
import 'package:loginblock/src/screens/scoped/login_screen_scoped.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: "My App",
        home: Scaffold(
          body: LoginScreenScoped(),
        ),
      ),
    );
  }
}
