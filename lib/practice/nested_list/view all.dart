import 'package:flutter/material.dart';
import 'package:my_project/practice/nested_list/Inner_list.dart';
import 'Menu.dart';

class ViewAll extends StatelessWidget {
  Menu menu;

  ViewAll({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menu.title),
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InnerList(menu.productList[index])));
            },
            child: Container(
              alignment: Alignment.center,
              height: 180,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue[100],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('${menu.productList[index].image}'),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Text('${menu.productList[index].item}')
                ],
              ),
            ),
          ),
        );
      }, separatorBuilder: (context, index) {
        return Container(
          color: Colors.white,
          height: 15,
        );
      }, itemCount:menu.productList.length ),
    );
  }
}
