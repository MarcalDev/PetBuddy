import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/widgets/background_widget.dart';

import '../../util/widgets/button_widget.dart';
import '../../util/widgets/text_field_widget.dart';
import '../../util/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        children: const [
          TextFieldWidget(
            hintText: 'Hint',
            labelText: 'Digite',
            isPassword: false,
          ),
          ButtonWidget(
            buttonText: 'CONTINUAR',
            buttonColor: AppColors.corBotao,
          ),
          TextWidget(text: 'AAAAAAAA')
        ],
      ),
    );
  }
}
