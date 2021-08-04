import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key key,
    this.text,
    this.size,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
