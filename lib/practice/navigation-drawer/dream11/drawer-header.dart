import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/FancodeScreen.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/HelpScreen.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/HowToPlayScreen.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/MoreScreen.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/MyInfoScreen.dart';
import 'package:my_project/practice/navigation-drawer/dream11/Drawer_pages/Refer&Earn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyPage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red.shade900
        ),
      ),
    );
  }
}
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  var selectedIndex = 0;
  var textStyle = const TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold);
  final _widgetOptions = [];

  var _selectedIndex=0;

  @override
  void initState() {
    _widgetOptions.add(
      Center(
        child: ReferAndEarn(),
      )
    );
    _widgetOptions.add(
      Center(
        child: MyInfoScreen(),
      )
    );
    _widgetOptions.add(
      Center(
        child: HelpScreen(),
      )
    );
    _widgetOptions.add(
      Center(
        child: HowToPlayScreen(),
      )
    );
    _widgetOptions.add(
      Center(
        child: MoreScreen(),
      )
    );
    _widgetOptions.add(
      Center(
        child: FancodeScreen(),
      )
    );
    super.initState();
  }

  void _menuItemClicked(int index)
  {
    setState(() {
      _selectedIndex = index;
      Navigator.pop(context);
      Navigator.push(context, MaterialPageRoute( builder: (context) => _widgetOptions[_selectedIndex]));
    });
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40),
          child: ListTile(leading: Image.asset('assets/images/dream11.jpg',height: 30,),title: Text('DREAM11',style: TextStyle(color: Colors.white),),),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_none_rounded),
          SizedBox(width: 15,),
          Icon(Icons.account_balance_wallet_outlined)
        ],
      ),
      body: Center(
        child: Text('Sujal'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(fontSize: 12),
        selectedLabelStyle: TextStyle(fontSize: 12),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,),
            label: "Home",
            backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.stadium_outlined,),
              label: "My Matches",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/Icons/medal.svg',height: 28,color: Colors.black45,),
              label: "Winners",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp),
              label: "Rewards",
              backgroundColor: Colors.white
          )
        ],
      ),
      drawer: Drawer(
        width: 360,
        child: Column(
          children: [
            buildHeader(),
            buildMenuItems(),
          ],
        ),
      ),
    );
  }

  buildHeader() {
  return LayoutBuilder(
    builder: (context, constraints) {
      print('height :${constraints.maxHeight}');
      return Container(
          color: Colors.black,
          height: (MediaQuery.of(context).size.height)*0.16,
          padding: EdgeInsets.fromLTRB(16, MediaQuery.of(context).viewPadding.top, 16, 0),
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/images/dream11.jpg'),),
            title: Text('Sujal Patoliya',style: TextStyle(color: Colors.white),),
            subtitle: Text('Skill Score: 511',style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.chevron_right,color: Colors.white,),
          )
      );
    },
  );
  }

  buildMenuItems() {
    return Container(
      height: (MediaQuery.of(context).size.height)*0.83,
      color: Colors.grey.shade200,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: ListView(

          shrinkWrap: true,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      _menuItemClicked(0);
                    },
                    selected: _selectedIndex == 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    leading: Icon(Icons.group_add_outlined,color: Colors.black),
                    title: Text('Refer & Earn'),
                    selectedColor: Colors.black,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  ListTile(
                    onTap: () {
                      _menuItemClicked(1);
                    },
                    selected: _selectedIndex == 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    leading: Icon(Icons.settings,color: Colors.black,),
                    title: Text('My Info & Settings'),
                    selectedColor: Colors.black,
                  ),
                ],
              ),
            ),
            Divider(
              height: 11,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    onTap: () {
                      _menuItemClicked(2);
                    },
                    selected: _selectedIndex == 2,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    leading: Icon(Icons.headset_mic_outlined,color: Colors.black,),
                    title: Text('Help & Support'),
                    selectedColor: Colors.black,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  ListTile(
                    onTap: () {
                      _menuItemClicked(3);
                    },
                    selected: _selectedIndex == 3,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    leading: Image.asset('assets/images/game_pad.png',height: 25,color: Colors.black,),
                    title: Text('How to Play'),
                    selectedColor: Colors.black,
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey.shade200,
                  ),
                  ListTile(
                    onTap: () {
                      _menuItemClicked(4);
                    },
                    selected: _selectedIndex == 4,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    leading: Icon(Icons.more_horiz,color: Colors.black,),
                    title: Text('More'),
                    selectedColor: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              height: 20,
            ),
            Container(
              height: 25,
              color: Colors.grey.shade200,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16),
                child: Text('More From Dream Sports'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: ListTile(
                onTap: () {
                  _menuItemClicked(5);
                },
                selected: _selectedIndex == 5,
                leading: CircleAvatar(backgroundImage: AssetImage('assets/images/fancode.jpg'),),
                title: Text('FanCode Shop'),
                selectedColor: Colors.black,
                subtitle: Text('Buy Team India collection & gear'),
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              height: 20,
            ),
            Text('VERSION 5.5.0'),
          ],
        ),
      ),
    );
  }
}
