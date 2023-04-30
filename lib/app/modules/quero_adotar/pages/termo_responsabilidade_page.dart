import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';

import '../../../util/app_colors.dart';
import '../../../util/text_fonts.dart';
import '../../../util/widgets/text_widget.dart';

class TermoResponsabilidadePage extends StatelessWidget {
  const TermoResponsabilidadePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      TextWidget(
        text: 'Assinatura',
        fontSize: TextFonts.fonteSubTituloLogin,
        textColor: AppColors.corPadraoAplicativo,
        fontWeight: FontWeight.bold,
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            color: AppColors.corBranco,
            border: Border.all(color: AppColors.corCinza.withOpacity(0.5), width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: [
            SvgPicture.asset(AssetsAplicativo.assinaturaIlustracao),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 1.5,
              color: AppColors.corCinza,
            ),
            SizedBox(
              height: 5,
            ),
            TextWidget(
              text: 'Assinatura do Adotante',
              fontSize: TextFonts.fonteTextoPequeno,
              textColor: AppColors.corCinza,
            )
          ],
        ),
      )
    ]);
  }
}
