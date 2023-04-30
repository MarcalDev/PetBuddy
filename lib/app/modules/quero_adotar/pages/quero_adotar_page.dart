import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/modules/quero_adotar/pages/termo_responsabilidade_page.dart';
import 'package:petbuddy/app/modules/quero_adotar/pages/upload_documentos_page.dart';
import 'package:petbuddy/app/modules/quero_adotar/widgets/quero_adotar_background_widget.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/button_widget.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

import '../widgets/quero_adotar_card_widget.dart';

class QueroAdotarPage extends StatefulWidget {
  const QueroAdotarPage({super.key});

  @override
  State<QueroAdotarPage> createState() => _QueroAdotarPageState();
}

class _QueroAdotarPageState extends State<QueroAdotarPage> {
  PageController pageController = PageController();

  avancarPagina() {
    pageController.jumpToPage(1);
  }

  @override
  Widget build(BuildContext context) {
    return QueroAdotarBackgroundWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.corBranco,
                border: Border.all(color: AppColors.corBranco, width: 1.5),
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            padding: EdgeInsets.only(left: 10, bottom: 15, top: 15),
            child: Row(
              children: [
                SvgPicture.asset(AssetsAplicativo.documentFlat),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextWidget(
                      text: 'Upload de Documentos',
                      textColor: AppColors.corPadraoAplicativo,
                      fontWeight: FontWeight.bold,
                      fontSize: TextFonts.fonteTextoMaior,
                    ),
                    TextWidget(
                      text: 'Realize o upload dos documentos \nfaltantes para prosseguir',
                      textColor: AppColors.corCinzaMedio,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              pageSnapping: false,
              controller: pageController,
              children: const <Widget>[
                UploadDocumentosPage(),
                TermoResponsabilidadePage(),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ButtonWidget(
                buttonText: 'PRÓXIMO',
                onPressed: () => avancarPagina(),
                buttonColor: AppColors.corPadraoAplicativo,
                textColor: AppColors.corBranco,
              )),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
