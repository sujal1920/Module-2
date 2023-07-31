import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
          title: Text('Dialog'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var result = await showAlertDialog(context);
                    print(result);
                  },
                  child: Text('Alert Dialog')),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var result = await showSimpleDialog(context);
                    print(result);
                  },
                  child: Text('Simple Dialog')),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  onPressed: () {
                    showCustomDialog(context);
                  },
                  child: Text('Custom Dialog')),
              SizedBox(
                height: 16,
              )
            ],
          ),
        ));
  }

  Future<dynamic> showAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Logout'),
            content: Text('are you sure , you want to logout'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, 'Logout');
                  },
                  child: Text('Logout')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Cancel'))
            ],
          );
        });
  }

  Future<dynamic> showSimpleDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Select language'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Java');
                },
                child: Text('Java'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'Python');
                },
                child: Text('Python'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, 'HTML');
                },
                child: Text('HTML'),
              ),
            ],
          );
        });
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
              child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/feedback.png',
                  height: 40,
                  width: 40,
                ),
                Text(
                  'Rate us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemBuilder: (context, index) {
                    return Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                  onRatingUpdate: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Enter message',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Submit'
                        )
                    )
                  ],
                )
              ],
            ),
          ));
        });
  }
}
