import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date picker',
      home: DatePicker(),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {

  var dob = '';
  final _dobController = TextEditingController();
  pickDate(BuildContext context) async {
    var dateTime = await showDatePicker(context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
      fieldLabelText: 'Date Of Birth',
      helpText: 'select',
      confirmText: 'Done',
      fieldHintText: 'dd-MM-yyyy',
      errorInvalidText: 'invalid text',
      errorFormatText: 'invalid format',
    );

    if(dateTime != null)
      {
          dob = '${dateTime.day.toString().padLeft(2,'0')}-${dateTime.month.toString().padLeft(2,'0')}-${dateTime.year}';
      }
    else{
      print('please select date of birth');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            controller: _dobController,
            onTap: () {
              pickDate(context);
              FocusScope.of(context).requestFocus(FocusNode());
            },
            decoration: InputDecoration(labelText: 'Date of Birth'),
          ),
        )
      ),
    );
  }
}
