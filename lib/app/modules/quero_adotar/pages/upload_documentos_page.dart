import 'package:flutter/material.dart';

import '../../../util/app_colors.dart';
import '../../../util/assets_aplicativo.dart';
import '../../../util/text_fonts.dart';
import '../../../util/widgets/text_widget.dart';
import '../widgets/quero_adotar_card_widget.dart';

class UploadDocumentosPage extends StatelessWidget {
  const UploadDocumentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextWidget(
          text: 'Documentos',
          fontSize: TextFonts.fonteSubTituloLogin,
          textColor: AppColors.corPadraoAplicativo,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 15,
        ),
        QueroAdotarCardWidget(titulo: 'RG', icone: AssetsAplicativo.iconeCracha),
        SizedBox(
          height: 15,
        ),
        QueroAdotarCardWidget(titulo: "CPF", icone: AssetsAplicativo.iconeCracha),
        SizedBox(
          height: 15,
        ),
        QueroAdotarCardWidget(titulo: "COMPROVANTE DE RESIDÊNCIA", icone: AssetsAplicativo.iconeCasa),
      ],
    );
  }
}
