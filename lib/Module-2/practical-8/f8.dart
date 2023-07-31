import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageWithTextView(),
    );
  }
}

class ImageWithTextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images with TextView'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/apple.png',height: 50,),
                Image.asset('assets/images/dream11.jpg',height: 50,),
              ],
            ),
            Center(
              child: Text('Textview'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/fancode.jpg',height: 50,),
                Image.asset('assets/images/facebook.png',height: 50,),
              ],
            )
          ],
        ),
      )
    );
  }
}
