import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: dTable()
    );
  }
}
Widget dTable() {
  var data = <Data>[
    Data("varun", "20", "2001"),
    Data("varun1", "21", "2000"),
    Data("varun2", "23", "1998"),
    Data("varun3", "26", "1995"),
  ];
  return DataTable(
    horizontalMargin: 50,
    columns: const [
      DataColumn(
        label: Text("Name"),
      ),
      DataColumn(
        label: Text("Age"),
      ),
      DataColumn(
        label: Text("Year"),
      ),
      DataColumn(label: FlutterLogo())
    ],
    rows: data.map((data) {
      return DataRow(cells: [
        DataCell(Text(data.name)),
        DataCell(Text(data.age)),
        DataCell(Text(data.year)),
        const DataCell(FlutterLogo())
      ]);
    }).toList(),
  );
}

class Data {
  String name;
  String age;
  String year;
  Data(this.name, this.age, this.year);
}
// [
//          DataRow(cells:[
//            DataCell(Text("Ross")),
//            DataCell(Text("28")),
//            DataCell(Text("2003")),
//            DataCell(FlutterLogo()),
//          ]),
//          DataRow(cells:[
//            DataCell(Text("Joey")),
//            DataCell(Text("38")),
//            DataCell(Text("2001")),
//            DataCell(FlutterLogo()),
//          ]),
//          DataRow(cells:[
//            DataCell(Text("Monica")),
//            DataCell(Text("23")),
//            DataCell(Text("2008")),
//            DataCell(FlutterLogo()),
//          ]),
//        ]