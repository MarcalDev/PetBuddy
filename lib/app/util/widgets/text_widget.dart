import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLines;
  const TextWidget({super.key, required this.text, this.textColor, this.fontSize, this.fontWeight, this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLines,
        style: TextStyle(          
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,          
        ));
  }
}
