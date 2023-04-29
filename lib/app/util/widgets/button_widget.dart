import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

class ButtonWidget extends StatefulWidget {
  final String buttonText;
  final Color? buttonColor;
  final void Function()? onPressed;
  const ButtonWidget({super.key, required this.buttonText, this.buttonColor, required this.onPressed});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size?>(Size.fromHeight(50)),
        backgroundColor: MaterialStateProperty.all<Color?>(widget.buttonColor ?? AppColors.corBotao),        
      ),
      child: TextWidget(
        text: widget.buttonText,
        textColor: AppColors.corPreto,
        fontSize: TextFonts.fonteBotao,
      ),
    );
  }
}
