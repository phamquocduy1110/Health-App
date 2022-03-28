import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tables extends StatefulWidget {
  @override
  _TablesState createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Text("TABLE WIDGET",
                textAlign:TextAlign.center,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              Padding(padding: const EdgeInsets.only(top: 30),),
              Text("Academic record:",
                textAlign:TextAlign.start,
                style:TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              Table(
                border:TableBorder.all(width: 0.5,color: Colors.black,),
                children: [
                  TableRow(
                      children: [
                        Text("Level Of Education"),
                        Text("Institution"),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("B.Tech upto 3rd sem"),
                        Text("ABES EC"),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("Intermediate"),
                        Container(
                            padding: EdgeInsets.all(8),
                            child: Text("Tramadol is a strong pain relief medicine effective for both general and nerve-related pain. Tramadol can cause dependence and use may be limited by side effects such as nausea and sedation. Pain-relieving effects or side effects may be altered in some people due to genetic variation or drug interactions. Prescribed for Back Pain, Chronic Pain, Pain. May also be prescribed off label for Anxiety, Depression, Fibromyalgia, Obsessive Compulsive Disorder, Restless Legs Syndrome, Syringomyelia, Vulvodynia. Prescription and OTC Prescription only. Tramadol is a strong pain relief medicine effective for both general and nerve-related pain. Tramadol can cause dependence and use may be limited by side effects such as nausea and sedation. Pain-relieving effects or side effects may be altered in some people due to genetic variation or drug interactions. Prescribed for Back Pain, Chronic Pain, Pain. May also be prescribed off label for Anxiety, Depression, Fibromyalgia, Obsessive Compulsive Disorder, Restless Legs Syndrome, Syringomyelia, Vulvodynia. Prescription and OTC Prescription only")),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("High School"),
                        Text("St. Francis School"),
                      ]
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}