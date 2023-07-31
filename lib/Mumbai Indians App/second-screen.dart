import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/third-screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                Text('2015',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/ipl2015.jpg',
                  height: 400,
                  width: 450,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdScreen()));
                        },
                        child: Text("<")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ThirdScreen()));
                        },
                        child: Text(">")),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
