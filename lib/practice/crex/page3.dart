import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: (MediaQuery.of(context).size).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('WTC')
             ],
          ),
        );
      },),
    );
  }
}
