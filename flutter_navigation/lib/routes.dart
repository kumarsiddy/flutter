import 'package:flutter/material.dart';
import 'package:flutter_navigation/src/ui/first/first_screen.dart';
import 'package:flutter_navigation/src/ui/first/second_screen.dart';

class RouteConfiguration {
  static Route onGenerateRoute(RouteSettings settings) {
    if (settings.name == "/") {
      return MaterialPageRoute(
        builder: (context) {
          return FirstScreen();
        },
      );
    } else {
      return MaterialPageRoute(
        builder: (context) {
          return SecondScreen();
        },
      );
    }
  }
}
