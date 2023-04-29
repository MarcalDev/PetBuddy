import 'package:flutter/material.dart';
import 'package:petbuddy/app/modules/cadastro/pages/cadastro_ong_page.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import '../../../util/widgets/button_widget.dart';
import '../../../util/widgets/text_field_widget.dart';
import '../../../util/widgets/text_widget.dart';
import '../widgets/login_background_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LoginBackgroundWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: 'BEM VINDO AO PETBUDDY',
            fontSize: TextFonts.fonteTituloLogin,
            textColor: AppColors.corPadraoAplicativo,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextWidget(
            text: 'Adote um amigo para a vida toda aqui',
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
          const Align(
              alignment: Alignment.centerRight,
              child: TextWidget(text: 'Esqueci a Senha', fontSize: TextFonts.fonteTextoMedio)),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ButtonWidget(
              buttonText: 'ENTRAR',
              textColor: AppColors.corBranco,
              buttonColor: AppColors.corPadraoAplicativo,
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CadastroOngPage(),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              children: const [
                TextWidget(text: 'Não tem Cadastro? ', fontSize: TextFonts.fonteTextoMedio),
                TextWidget(
                  text: ' Clique aqui',
                  fontSize: TextFonts.fonteTextoMedio,
                  fontWeight: FontWeight.w600,
                  textColor: AppColors.corPadraoAplicativo,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
