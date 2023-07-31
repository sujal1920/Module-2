import 'package:flutter/material.dart';
import 'package:my_project/Module-2/practical-3/p3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  final _firstNumberController = TextEditingController();
  final _secondNumberController = TextEditingController();
  var Operation = '+';

  void updateSelection(String? value) {
    setState(() {
      Operation = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: 'Enter First Number'),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    labelText: 'Enter Second Number'),
              ),
              RadioListTile(
                value: '+',
                groupValue: Operation,
                onChanged: (value)
                {
                updateSelection(value);
                },
                title: Text('+'),
              ),
              RadioListTile(
                value: '-',
                groupValue: Operation,
                onChanged: (value)
                {
                  updateSelection(value);
                },
                title: Text('-'),
              ),
              RadioListTile(
                value: '*',
                groupValue: Operation,
                onChanged: (value)
                {
                  updateSelection(value);
                },
                title: Text('*'),
              ),
              RadioListTile(
                value: '/',
                groupValue: Operation,
                onChanged: (value)
                {
                  updateSelection(value);
                },
                title: Text('/'),
              ),

              ElevatedButton(onPressed: ()
              {
                final firstNumber = double.parse(_firstNumberController.text);
                final secondNumber = double.parse(_secondNumberController.text);
                double result = 0;
                switch (Operation)
                {
                  case '+' :
                    result = firstNumber + secondNumber ;
                    break;

                  case '-' :
                    result = firstNumber - secondNumber ;
                    break ;

                  case '*' :
                    result = firstNumber * secondNumber ;
                    break ;

                  case '/' :
                    result = (firstNumber ~/ secondNumber) as double ;
                    break ;
                }

                Navigator.push(
                    context,
                    MaterialPageRoute( builder:
                    (context) => MyCalculator(result as int)));
              }, child: Text('Calculate'))
            ],
          )
      ),
    );
  }
}
