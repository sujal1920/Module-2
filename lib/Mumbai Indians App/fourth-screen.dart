import 'package:flutter/material.dart';
import 'package:my_project/Mumbai%20Indians%20App/fifth-screen.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
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
                Text('2019',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Image.asset(
                  'assets/images/ipl2019.jpg',
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
                                  builder: (context) => Fifthscreen()));
                        },
                        child: Text("<")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Fifthscreen()));
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
