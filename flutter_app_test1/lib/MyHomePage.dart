import 'package:flutter/material.dart';

import 'MySecondPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key key,
      this.title,
      this.counter,
      this.decrementCounter,
      this.incrementCounter})
      : super(key: key);

  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  void _onPressed() {
    widget.incrementCounter(null);
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
              widget.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text('next screen'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MySecondPage(
                              widget.decrementCounter,
                              title: 'My Second Page',
                              counter: widget.counter,
                            )));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
