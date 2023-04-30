import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/widgets/text_field_widget.dart';

import '../../../util/app_colors.dart';
import '../../../util/text_fonts.dart';
import '../../../util/widgets/text_widget.dart';

class SelecionarDataPage extends StatelessWidget {
  const SelecionarDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const TextWidget(
        text: 'Data Retirada',
        fontSize: TextFonts.fonteSubTituloLogin,
        textColor: AppColors.corPadraoAplicativo,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(
        height: 15,
      ),
      TextFieldWidget(
        hintText: '27/04/2023',
        prefixIcon: SvgPicture.asset(
          AssetsAplicativo.iconeCalendario,
          fit: BoxFit.scaleDown,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const TextWidget(
        text: 'Observação',
        fontSize: TextFonts.fonteSubTituloLogin,
        textColor: AppColors.corPadraoAplicativo,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(
        height: 15,
      ),
      const TextFieldWidget(
        hintText: 'Adicione uma Observação',
        maxLines: 5,
      )
    ]);
  }
}
