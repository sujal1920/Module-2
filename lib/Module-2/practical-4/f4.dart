import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeColor(),
    );
  }
}
class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {

  Color color1 = Colors.black12;
  var colorList = [Colors.white,Colors.blue.shade300,Colors.red.shade300,Colors.orange.shade300,Colors.grey,Colors.amber.shade300];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Container(
            child: ElevatedButton(onPressed: () {
              setState(() {
                int i = Random().nextInt(5);
                color1 = colorList[i];
              });
            },
              child: Text('Change Color'),
            ),
          ),
        ),
      );
  }

}
