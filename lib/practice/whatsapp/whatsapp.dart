import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xff176950),
              child: Icon(Icons.chat,),
              onPressed: () {},
            ),
            appBar: AppBar(
              backgroundColor: Color(0xff176950),
              title: Text('WhatsApp'),
              actions: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        // Image.asset(
                        //   'assets/images/camera.png',
                        //   height: 30,
                        // ),
                        Icon(Icons.camera_alt_outlined),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Icon(Icons.search_rounded),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                        ),
                        PopupMenuButton(itemBuilder: (context) {
                          return [
                            PopupMenuItem(value: 1, child: Text('New group')),
                            PopupMenuItem(
                                value: 2, child: Text('New broadcast')),
                            PopupMenuItem(
                                value: 3, child: Text('Linked devices')),
                            PopupMenuItem(
                                value: 4, child: Text('Starred messages')),
                            PopupMenuItem(value: 5, child: Text('Payments')),
                            PopupMenuItem(value: 6, child: Text('Settings')),
                          ];
                        })
                      ],
                    )),
              ],
              bottom: TabBar(
                tabs: [
                  Tab(
                        icon: Icon(Icons.groups),
                      ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),
                ],
              ),
            ),
            body: Center(
              child: Container(
                child: Text('hello'),
              ),
            )
        ),
      ),
    );
  }
}
