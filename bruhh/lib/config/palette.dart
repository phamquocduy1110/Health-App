import 'package:flutter/material.dart';

class Palette {
  static const Color p1 = Color(0xFFF8F5F1);
  static const Color p2 = Color(0xFFF8A488);
  static const Color p3 = Color(0xFF5AA897);
  static const Color p4 = Color(0xFF45526C);
  static const Color p5 = Color(0xFF394A6D);
  static const Color mainColor = Color(0xFF3C9D9B);
  static const Color p7 = Color(0xFF52DE97);
  static const Color p8 = Color(0xFFC0FFB3);
  static const Color textNo = Color(0xFF000000);
  static const Color textTil = Color(0xFF142F43);
  static const Color starRating = Color(0xFFF3950D);
  static const Color online = Color(0xFF4BCB1F);

  // gradient color
  static const LinearGradient wellComeScreen = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Palette.p5, Palette.p1],
  );

  static const LinearGradient gradientPattren = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black26],
  );
}
