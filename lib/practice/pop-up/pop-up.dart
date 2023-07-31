import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pop - up'),
        actions: [
          PopupMenuButton(
            onSelected: (value)
              {
                switch (value)
                    {
                  case 1 :
                    break;
                  case 2 :
                    break;
                  case 3 :
                    break;
                  default :
                }
              },
              itemBuilder: (context)
                  {
                    return [
                      PopupMenuItem(
                        value: 1,
                          child: Text('Profile')
                      ),
                      PopupMenuItem(
                          value: 2,
                          child: Text('Settings')
                      ),
                      PopupMenuItem(
                          value: 3,
                          child: Text('Logout')
                      ),
                    ];
                  }
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
