import 'package:flutter/material.dart';
import 'MyHomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int counter;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counter = counter ?? 0;
  }

  void _decrementCounter(_){
    setState(() {
      counter--;
      print('decrement: $counter');
    });
  }

  void _incrementCounter(_){
    setState(() {
      counter++;
      print('increment: $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'My Home Page',
        counter: counter,
        decrementCounter: _decrementCounter,
        incrementCounter: _incrementCounter,
      ),
    );
  }
}
