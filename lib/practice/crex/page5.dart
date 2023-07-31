import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

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
