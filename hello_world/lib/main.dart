import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final wordPair = WordPair.random();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      title: 'Welcome to TEDU Flutter',
      home: Scaffold (
        appBar: AppBar(
          title: const Text("Welcome to flutter"),
        ),
        body: Center(
          child: Text(wordPair.asUpperCase),
        ),
      ),
    );
  }

}