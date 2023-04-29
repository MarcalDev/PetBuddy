import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final String? labelText;
  final bool isPassword;
  final TextInputType? keyboardType;
  const TextFieldWidget(
      {super.key, required this.hintText, this.labelText, this.keyboardType, this.isPassword = false});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText != null
            ? Column(
                children: [
                  TextWidget(
                      text: widget.labelText!, textColor: AppColors.corPreto, fontSize: TextFonts.fonteTextField),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              )
            : SizedBox(),
        TextField(
          keyboardType: widget.keyboardType ?? TextInputType.text,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: widget.hintText,
            fillColor: AppColors.corBranco,
            labelStyle: const TextStyle(color: AppColors.corPreto, backgroundColor: Colors.transparent),
            hintStyle: const TextStyle(color: AppColors.corPreto, backgroundColor: Colors.transparent),
            isDense: false,
            filled: true,
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: AppColors.fundoTextField)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                borderSide: BorderSide(color: AppColors.fundoTextField)),
          ),
        ),
      ],
    )
    );
  }
}