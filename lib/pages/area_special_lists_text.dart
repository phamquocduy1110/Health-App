import 'package:flutter/material.dart';

import '../utisl.dart';

class AreaSpecialListsText extends StatefulWidget {
  const AreaSpecialListsText({Key? key}) : super(key: key);

  @override
  _AreaSpecialListsTextState createState() => _AreaSpecialListsTextState();
}

class _AreaSpecialListsTextState extends State<AreaSpecialListsText> {
  Widget areaSpecialistsText() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'Specialist In Your Area',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: midColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return areaSpecialistsText();
  }

}