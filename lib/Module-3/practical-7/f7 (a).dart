/*
1.AppBar Menu (Options Menu):

The AppBar menu is similar to the Options Menu in Android. It appears as a set of actions or settings at the top-right corner of the app's AppBar.
It typically contains actions related to the current screen or the app's global settings.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar Menu Demo'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                showToast('Settings clicked');
              },
            ),
          ],
        ),
        body: Center(
          child: Text('App content goes here.'),
        ),
      ),
    );
  }

  void showToast(String message) {
    ScaffoldMessenger.of(context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
