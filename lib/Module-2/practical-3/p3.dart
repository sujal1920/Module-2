import 'package:flutter/material.dart';

class MyCalculator extends StatelessWidget {

 final int result;


 MyCalculator(this.result);

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Center(
        child: Text('Result = $result',
        style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
