import 'package:assignment3/screens/home.dart';
import 'package:assignment3/screens/login.dart';
import 'package:assignment3/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            return Home();
          }),
        );
      case "/login":
        return MaterialPageRoute(
            builder: (settings) =>
                LayoutBuilder(builder: (context, constraints) {
                  return Login();
                }));
      case "/signup":
        return MaterialPageRoute(
            builder: (settings) =>
                LayoutBuilder(builder: (context, constraints) {
                  return Signup();
                }));
      default:
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(builder: (context, constraints) {
            return Home();
          }),
        );
    }
  }
}
