import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  const TextWidget({super.key, required this.text, this.textColor, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
        ));
  }
}
