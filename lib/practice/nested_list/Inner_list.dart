import 'package:flutter/material.dart';
import 'package:my_project/practice/nested_list/Menu.dart';

class InnerList extends StatelessWidget {
  Item itemname;
  InnerList(this.itemname);

  @override
  Widget build(BuildContext context) {
    Size size = (MediaQuery.of(context).size)*0.7;
    return Scaffold(
      appBar: AppBar(
        title: Text('${itemname.item}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('${itemname.image}',height: size.height,width: size.width,),
            Text(
                '${itemname.item}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            )
          ],
        ),
      ),
    );
  }
}
