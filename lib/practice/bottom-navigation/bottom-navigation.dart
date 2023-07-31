import 'package:flutter/material.dart';
import 'package:my_project/practice/model/menu_item.dart';
import 'package:my_project/practice/screens/home_screen.dart';
import 'package:my_project/practice/screens/notification_screen.dart';
import 'package:my_project/practice/screens/profile-screen.dart';
import 'package:my_project/practice/screens/search-screen.dart';
import 'package:my_project/practice/screens/setting-screen.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0 ;
  var itemList = <MenuItem>[];

  @override
  void initState() {
    super.initState();
    itemList.add(MenuItem('Home', Colors.amber, HomeScreen()));
    itemList.add(MenuItem('Notification', Colors.green, NotificationScreen()));
    itemList.add(MenuItem('Profile', Colors.red, ProfileScreen()));
    itemList.add(MenuItem('Search', Colors.purple, SearchScreen()));
    itemList.add(MenuItem('Settings', Colors.blue, SettingScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemList[selectedIndex].title),
        backgroundColor: itemList[selectedIndex].color,
      ),
      body: itemList[selectedIndex].widget,

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: itemList[selectedIndex].color,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },

          showSelectedLabels: true,
          showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: itemList[0].color
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: itemList[1].color
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: itemList[2].color
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: itemList[3].color
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: itemList[4].color
          ),
        ],
      )
    );
  }
}
