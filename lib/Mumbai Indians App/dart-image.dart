import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/first-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mumbai indians',
      home: FirstScreen(),
    );
  }
}
