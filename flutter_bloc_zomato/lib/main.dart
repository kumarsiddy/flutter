import 'package:flutter/material.dart';
import 'package:flutter_bloc_zomato/ui/main_screen.dart';

void main() {
  runApp(ZomatoApp());
}

class ZomatoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zomato',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MainScreen(),
    );
  }
}
