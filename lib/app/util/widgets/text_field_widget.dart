import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final String labelText;
  final bool isPassword;
  final TextInputType? keyboardType;
  const TextFieldWidget(
      {super.key, required this.hintText, required this.labelText, this.keyboardType, this.isPassword = false});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType ?? TextInputType.text,
      obscureText: widget.isPassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        fillColor: AppColors.fundoTextField,
        hintStyle: const TextStyle(color: AppColors.fundoTextField),
        isDense: false,
        filled: true,
        labelText: widget.labelText,
        labelStyle: TextStyle(color: Colors.red),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.fundoTextField)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.fundoTextField)),
      ),
    );
  }
}
