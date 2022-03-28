import 'package:cupertino_date_textbox/cupertino_date_textbox.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  DateTime _selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final String formattedDate = DateFormat.yMd().format(_selectedDateTime);
    final selectedText = Text('You selected: $formattedDate');

    final birthdayTile = Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Birthday',
              style: TextStyle(
                color: CupertinoColors.systemBlue,
                fontSize: 15.0,
              )),
          const Padding(
            padding: EdgeInsets.only(bottom: 5.0),
          ),
          CupertinoDateTextBox(
              initialValue: _selectedDateTime,
              onDateChange: onBirthdayChange,
              Text: DateFormat.yMd().format(_selectedDateTime), hintText: '',),
        ],
      ),
    );

    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 100, 20, 50),
          child: Column(children: <Widget>[
            selectedText,
            const SizedBox(height: 15.0),
            birthdayTile
          ])),
    );
  }

  void onBirthdayChange(DateTime birthday) {
    setState(() {
      _selectedDateTime = birthday;
    });
  }
}