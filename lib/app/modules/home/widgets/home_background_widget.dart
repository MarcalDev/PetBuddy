import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

class HomeBackgroundWidget extends StatefulWidget {
  final Widget child;
  const HomeBackgroundWidget({super.key, required this.child});

  @override
  State<HomeBackgroundWidget> createState() => _HomeBackgroundWidgetState();
}

class _HomeBackgroundWidgetState extends State<HomeBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: AppColors.corBackground,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(children: [
            SvgPicture.asset(AssetsAplicativo.headerLogin, fit: BoxFit.fitHeight),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetsAplicativo.fotoUsuario,
                        height: 55,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            text: 'Olá, Maísa',
                            textColor: AppColors.corBranco,
                            fontSize: TextFonts.fonteSubTituloLogin,
                            fontWeight: FontWeight.w500,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.corVerdeSelecao,
                                border: Border.all(color: AppColors.corVerdeSelecao, width: 0),
                                borderRadius: const BorderRadius.all(Radius.circular(15))),
                            padding: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 13),
                            child: const TextWidget(
                              text: 'Adotante',
                              fontWeight: FontWeight.w500,
                              fontSize: TextFonts.fonteTextoPequenoMenor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                widget.child
              ],
            ),
          ]),
        ],
      ),
    ));
  }
}
