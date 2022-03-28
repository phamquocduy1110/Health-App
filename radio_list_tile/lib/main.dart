import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Radio Button Group Selected Item"),
        ),
        body: const SafeArea(
          child: Center(
            child: RadioGroup(),
          ),
        ),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  const RadioGroup({Key? key}) : super(key: key);

  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class NumberList {
  String number;
  int index;

  NumberList({required this.number, required this.index});
}

class RadioGroupWidget extends State {
  // Default Radio Button Selected Item.
  String radioItemHolder = 'One';

  // Group Value for Radio Button.
  int id = 1;

  List<NumberList> nList = [
    NumberList(
      index: 1,
      number: "One",
    ),
    NumberList(
      index: 2,
      number: "Two",
    ),
    NumberList(
      index: 3,
      number: "Three",
    ),
    NumberList(
      index: 4,
      number: "Four",
    ),
    NumberList(
      index: 5,
      number: "Five",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            'Selected Item = ' + radioItemHolder,
            style: const TextStyle(fontSize: 23),
          ),
        ),
        Expanded(
          child: Container(
            height: 350.0,
            child: Column(
              children: nList
                  .map(
                    (data) => RadioListTile(
                      title: Text(data.number),
                      groupValue: id,
                      value: data.index,
                      onChanged: (val) {
                        setState(() {
                          radioItemHolder = data.number;
                          id = data.index;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
