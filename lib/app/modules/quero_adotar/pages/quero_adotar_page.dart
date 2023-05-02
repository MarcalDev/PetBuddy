import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/modules/quero_adotar/pages/quero_adotar_sucesso_page.dart';
import 'package:petbuddy/app/modules/quero_adotar/pages/selecionar_data_page.dart';
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
  late int indexPage = 0;
  late String imagem = AssetsAplicativo.documentFlat;

  avancarPagina() {
    if (indexPage < 2) {
      pageController.jumpToPage(indexPage + 1);      
      indexPage += 1;
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const QueroAdotarSucessoPage(),
      ));
    }

    setState(() {
      switch (indexPage) {
        case 0:
          imagem = AssetsAplicativo.documentFlat;
          break;
        case 1:
          imagem = AssetsAplicativo.ilustracaoContrato;
          break;
        case 2:
          imagem = AssetsAplicativo.ilustracaoCalendario;
          break;
        default:
          imagem = AssetsAplicativo.documentFlat;
          break;
      }
    });
    
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: indexPage == 0 ? AppColors.corAmarelo : AppColors.corCinzaMedio),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: indexPage == 1 ? AppColors.corAmarelo : AppColors.corCinzaMedio),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: indexPage == 2 ? AppColors.corAmarelo : AppColors.corCinzaMedio),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset(imagem),
                    const SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                          text: 'Upload de Documentos',
                          textColor: AppColors.corPadraoAplicativo,
                          fontWeight: FontWeight.bold,
                          fontSize: TextFonts.fonteTextoMaior,
                        ),
                        const TextWidget(
                          text: 'Realize o upload dos documentos \nfaltantes para prosseguir',
                          textColor: AppColors.corCinzaMedio,
                        ),
                      ],
                    )
                  ],
                ),
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
                SelecionarDataPage()
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
