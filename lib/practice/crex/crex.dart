import 'package:flutter/material.dart';
import 'package:my_project/practice/crex/page1.dart';
import 'package:my_project/practice/crex/page2.dart';
import 'package:my_project/practice/crex/page3.dart';
import 'package:my_project/practice/crex/page4.dart';
import 'package:my_project/practice/crex/page5.dart';
import 'Menu  class.dart';
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
  var selectedIndex = 2 ;
  var titleList = <Menu>[];

  @override
  void initState() {
    titleList.add(Menu('WTC', Page1()));
    titleList.add(Menu('IPL', Page2()));
    titleList.add(Menu('T20 Blast', Page3()));
    titleList.add(Menu('TNPL', Page4()));
    titleList.add(Menu('World Cup', Page5()));

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xff0a062e),
              leading: Image.asset('assets/images/wicket.png',color: Colors.white,),
              title: Text('CREX'),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(Icons.search),
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.red,
                  tabs: [
                    Container(
                      width: 43,
                      child: Tab(
                        child: Text('Live(x)'),
                      ),
                    ),
                    Tab(
                      child: Text('For you'),
                    ),
                    Tab(
                      child: Text('Upcoming'),
                    ),
                    Tab(
                      child: Text('Finished'),
                    )
                  ]
              ),
            ),
            body: Padding(
              padding: EdgeInsets.all(8.0),
              child: titleList[selectedIndex].widget,
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              currentIndex: selectedIndex,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              showUnselectedLabels: true,
              unselectedItemColor: Colors.black45,
              selectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,),
                  label: 'Home',
                  backgroundColor: Colors.black38,
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/trophy.png',height: 20,color: Colors.black45,),
                  label: 'WTC',
                  backgroundColor: Colors.black38,
                ),
                BottomNavigationBarItem(
                  icon: Image.asset('assets/images/wicket.png',height: 25,),
                  label: 'Matches',
                  backgroundColor: Colors.black38,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_sharp,),
                  label: 'Fixtures',
                  backgroundColor: Colors.black38,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded),
                  label: 'Profile',
                  backgroundColor: Colors.black38,
                ),
              ],
            )
        ),
      ),
    );
  }
}
