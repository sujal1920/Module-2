import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(Icons.group_add_outlined),
                title: Text('Refer & earn'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('My Info & Settings'),
              ),
              Container(
                height: 10,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: Icon(Icons.headset_mic_outlined),
                title: Text('Help & Support'),
              ),
              ListTile(
                leading: Image.asset('assets/images/game_pad.png',height: 25,),
                title: Text('My Info & Settings'),
              ),
              ListTile(
                leading: Icon(Icons.more_horiz),
                title: Text('More'),
              ),
              Container(
                height: 20,
                color: Colors.grey.shade300,
              ),
              Container(
                height: 25,
                color: Colors.grey.shade300,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text('More From Dream Sports'),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/images/fancode.jpg',height: 35,),
                title: Text('Fancode Shop'),
                subtitle: Text('Buy Team India Collection & gear'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
