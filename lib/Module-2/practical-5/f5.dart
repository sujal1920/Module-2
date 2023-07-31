import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practical-5',
      home: TextEditors(),
    );
  }
}
class TextEditors extends StatefulWidget {
  const TextEditors({Key? key}) : super(key: key);

  @override
  State<TextEditors> createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditors> {
  double fontSize = 16.0;

  void increseFontSize()
  {
    setState(() {
      fontSize += 2.0;
    });
  }

  void decreaseFontSize()
  {
    setState(() {
      fontSize -= 2.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practical-5'),
      ),
      body: Center(
        child: Text('SUJAL',
        style: TextStyle(fontSize: fontSize)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: increseFontSize ,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 16,),
          FloatingActionButton(
              onPressed: decreaseFontSize,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
