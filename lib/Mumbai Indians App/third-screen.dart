import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/fourth-screen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
                Text('2017',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/ipl2017.jpg',
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
                                  builder: (context) => FourthScreen()));
                        },
                        child: Text("<")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FourthScreen()));
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
