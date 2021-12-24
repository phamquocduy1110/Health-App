import 'package:bruhh/config/palette.dart';
import 'package:bruhh/widget/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color bgColor;
  double size;
  final Color borderColor;
  bool isIcon;

  AppButton({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.bgColor,
    required this.borderColor,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(15),
        color: bgColor,
      ),
      child: isIcon == false
          ? Center(
            child: AppText(
                text: text!,
                color: color,
                fontWeight: FontWeight.w400,
                size: 20,
              ),
          )
          : Center(
            child: Icon(
                icon,
                color: color,
              ),
          ),
    );
  }
}
