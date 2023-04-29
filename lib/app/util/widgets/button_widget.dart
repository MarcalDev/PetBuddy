import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';

class ButtonWidget extends StatefulWidget {
  final String buttonText;
  final Color? buttonColor;
  const ButtonWidget({super.key, required this.buttonText, this.buttonColor});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(widget.buttonColor ?? AppColors.corBotao),
      ),
      child: Text(widget.buttonText),
    );
  }
}
