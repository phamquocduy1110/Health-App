import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  MySecondPage(
    this.decrementCounter, {
    Key key,
    this.title,
    this.counter,
  }) : super(key: key);

  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MySecondPageState();
  }
}

class _MySecondPageState extends State<MySecondPage> {
  void _onPressed() {
    widget.decrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              super.widget.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Decrement',
        child: Icon(Icons.indeterminate_check_box),
        backgroundColor: Colors.red,
      ),
    );
  }
}
