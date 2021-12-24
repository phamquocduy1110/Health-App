import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'My App',
    home: MyScaffold(),
  ));
}

@immutable
class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title});
  final Widget title;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: const BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget> [
          const IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
          )
        ]
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Material(
     child: Column (
       children: <Widget> [
         MyAppBar(
            title: Text(
             'Example Title',
             style: Theme.of(context).primaryTextTheme.title,
            ),
         ),
         const Expanded(
             child: Center (
               child: Text('Hello world'),
             ),
         )
       ],
     ),
   );
  }
}