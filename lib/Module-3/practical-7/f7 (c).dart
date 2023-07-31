/*
3.Dropdown Menu:

The Dropdown Menu in Flutter is similar to the Popup Menu in Android. It appears as a dropdown button and shows a list of options when tapped.
It offers a compact way to present a set of options to the user.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> cities = ['Surat', 'Vadodara', 'Ahmedabad', 'Mumbai', 'Delhi'];
  String? selectedCity;

  BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Menu Demo'),
        ),
        body: Center(
          child: DropdownButton<String>(
            value: selectedCity,
            items: cities.map((city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (value) {
              showToast('Selected city: $value');
              selectedCity = value;
            },
          ),
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
