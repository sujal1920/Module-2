import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/second-screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mumbai indians'),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 450,
            child: Column(
              children: [
                Text('2013',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/ipl2013.jpg',
                  height: 400,
                  width: 450,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()));
                    },
                    child: Text(">"))
              ],
            ),
          ),
        ));
  }
}
