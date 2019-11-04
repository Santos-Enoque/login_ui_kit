import 'package:flutter/material.dart';
import 'package:login_ui_kit/screens/login1.dart';
import 'package:login_ui_kit/screens/loginTwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login kit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginOne()
    );
  }
}
