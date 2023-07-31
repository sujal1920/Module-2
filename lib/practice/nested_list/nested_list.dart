import 'package:flutter/material.dart';
import 'package:my_project/practice/nested_list/Inner_list.dart';
import 'package:my_project/practice/nested_list/Menu.dart';
import 'package:my_project/practice/nested_list/view%20all.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MusicApp(),
    );
  }
}
class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {

  var categoryList = <Menu>[];
  var itemList = <Item>[];
  var itemList2 = <Item>[];

  @override
  void initState() {
    itemList.add(Item(item: 'Apna Bana Le', image: 'assets/images/song1.jpg'));
    itemList.add(Item(item: 'Bole Jo Koyal', image: 'assets/images/song2.jpg'));
    itemList.add(Item(item: 'Levels', image: 'assets/images/song3.jpg'));
    itemList.add(Item(item: 'No Competition', image: 'assets/images/song4.jpg'));
    itemList.add(Item(item: 'Yalgaar', image: 'assets/images/song5.jpg'));
    categoryList.add(Menu(title: 'Top Rated', productList: itemList));
    categoryList.add(Menu(title: 'Bollywood', productList: itemList));
    categoryList.add(Menu(title: 'Hindi', productList: itemList));
    categoryList.add(Menu(title: '90s Popular', productList: itemList));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ListView.separated(itemBuilder: (context, index12) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      categoryList[index12].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ViewAll(menu: categoryList[index12])));
                      },
                      child: Text(
                        'view all',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height)*0.18,
                  width: (MediaQuery.of(context).size.width),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InnerList(categoryList[index12].productList[index])));
                        },
                        child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.blue[100],),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('${categoryList[index12].productList[index].image}',height: 100,width: 150,),
                              Text('${categoryList[index12].productList[index].item}'),
                            ],
                          ),
                        ),
                      ),
                    );
                  }, separatorBuilder:
                      (context, index) {
                        return Container(
                          color: Colors.white,
                          width: 15,
                        );
                      }, itemCount: categoryList[index12].productList.length),
                )
              ],
            );
            },
              separatorBuilder: (context, index) {
              return Container(
                color: Colors.white,
                height: 10,
              );
            }, itemCount: categoryList.length)
        ),
      ),
    );
  }
}
