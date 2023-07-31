import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/sixth-screen.dart';

class Fifthscreen extends StatefulWidget {
  const Fifthscreen({Key? key}) : super(key: key);

  @override
  State<Fifthscreen> createState() => _FifthscreenState();
}

class _FifthscreenState extends State<Fifthscreen> {
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
                Text('2020',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/ipl2020.webp',
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
                                  builder: (context) => SixthScreen()));
                        },
                        child: Text("<")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SixthScreen()));
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
