import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/background_widget.dart';

import '../../util/widgets/button_widget.dart';
import '../../util/widgets/text_field_widget.dart';
import '../../util/widgets/text_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 75,
          ),
          const TextWidget(
            text: 'BEM VINDO AO PETBUDDY',
            fontSize: TextFonts.fonteTituloLogin,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
            text: 'Usuário',
            fontSize: TextFonts.fonteSubTituloLogin,
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 2,
          ),
          const TextFieldWidget(
            hintText: 'Usuário',
            isPassword: false,
          ),
          const SizedBox(
            height: 35,
          ),
          const TextFieldWidget(
            hintText: 'Senha',
            isPassword: false,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextWidget(text: 'Não tem Cadastro?', fontSize: TextFonts.fonteTextoMedio),
              TextWidget(text: 'Esqueci a Senha', fontSize: TextFonts.fonteTextoMedio)
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const ButtonWidget(
            buttonText: 'ACESSAR',
            buttonColor: AppColors.corBotao,
          ),
        ],
      ),
    );
  }
}
