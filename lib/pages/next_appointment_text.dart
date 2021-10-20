import 'package:flutter/material.dart';
import '../utisl.dart';

class NextAppointmentText extends StatefulWidget {
  const NextAppointmentText({Key? key}) : super(key: key);

  @override
  _NextAppointmentText createState() => _NextAppointmentText();
}

class _NextAppointmentText extends State<NextAppointmentText> {
  Widget nextAppointmentText() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            'Your Next Appointment',
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
    return nextAppointmentText();
  }

}