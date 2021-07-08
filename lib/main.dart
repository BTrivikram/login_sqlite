import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login/login_page.dart';
import 'pages/login/register.dart';

void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => LoginPage(),
  '/home': (BuildContext context) => HomePage(),
  '/register': (BuildContext context) => RegisterPage(),
  '/': (BuildContext context) => LoginPage(),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Sqflite App',
      theme: ThemeData.dark(),
      routes: routes,
      initialRoute: '/home',
    );
  }
}
