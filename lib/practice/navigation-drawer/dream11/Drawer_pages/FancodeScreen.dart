import 'package:flutter/material.dart';
class FancodeScreen extends StatefulWidget {
  const FancodeScreen({Key? key}) : super(key: key);

  @override
  State<FancodeScreen> createState() => _FancodeScreenState();
}

class _FancodeScreenState extends State<FancodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fancode'),
      ),
      body: Center(
        child: Text('Fancode'),
      ),
    );
  }
}
