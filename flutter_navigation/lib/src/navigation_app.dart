import 'package:flutter/material.dart';
import 'package:flutter_navigation/routes.dart';

class NavigatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      onGenerateRoute: RouteConfiguration.onGenerateRoute,
    );
  }
}
