import 'dart:developer' as developer;
import '/pages/grid_view_page.dart';
import '/pages/list_view_page.dart';
import '/widgets/note_widget.dart';
import 'package:fl_paging/fl_paging.dart';
import 'package:flutter/material.dart';

import 'data/models/note.dart';
import 'data/note_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GridViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  static const ROUTE_NAME = 'ListViewPage';
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  static const TAG = 'ListViewPage';
  final GlobalKey key = GlobalKey();
  late ListViewDataSource dataSource;
  @override
  void initState() {
    super.initState();
    dataSource = ListViewDataSource(NoteRepository());
  }

  @override
  Widget build(BuildContext context) {
    developer.log('build', name: 'ListViewPage');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Demo ListView'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      body: PagingListView<Note>(
        key: key,
        stylePullToRefresh: StylePullToRefresh.IOS,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, data, child) {
          return NoteWidget(data);
        },
        pageDataSource: dataSource,
      ),
    );
  }
}
