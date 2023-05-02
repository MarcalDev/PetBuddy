import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/button_widget.dart';

import '../../../util/widgets/text_widget.dart';

class QueroAdotarSucessoPage extends StatelessWidget {
  const QueroAdotarSucessoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            child: Scaffold(
                body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(AssetsAplicativo.ilustracaoSucesso, fit: BoxFit.fitHeight),
        const Align(
          alignment: Alignment.center,
          child: TextWidget(
            text: 'ADOÇÃO CONCLUÍDA COM SUCESSO!',
            fontWeight: FontWeight.bold,
            textColor: AppColors.corPadraoAplicativo,
            fontSize: TextFonts.fonteSubTituloLogin,
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: TextWidget(
            textAlign: TextAlign.center,
            text:
                'Seu amigo mal pode esperar para te conhecer!\nBaixe o comprovante de adoção ou retorne \npara a tela inicial',
            fontSize: TextFonts.fonteTextoMaior,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ButtonWidget(
                      buttonText: 'BAIXAR COMPROVANTE',
                      onPressed: () {},
                      textColor: AppColors.corPadraoAplicativo,
                      buttonColor: AppColors.corBackground),
                  const SizedBox(
                    height: 25,
                  ),
                  ButtonWidget(
                    buttonText: 'TELA INICIAL',
                    onPressed: () {},
                    buttonColor: AppColors.corPadraoAplicativo,
                    textColor: AppColors.corBranco,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    ))));
  }
}
