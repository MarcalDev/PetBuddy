import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

import '../../../util/app_colors.dart';
import '../../../util/text_fonts.dart';

class QueroAdotarCardWidget extends StatelessWidget {
  final String titulo;
  final String icone;
  const QueroAdotarCardWidget({super.key, required this.titulo, required this.icone});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.corBranco,
            border: Border.all(color: AppColors.corCinza.withOpacity(0.5), width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Row(
          children: [
            SvgPicture.asset(icone),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(
                  text: titulo,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.corVerdeClaro.withOpacity(0.3),
                      border: Border.all(color: AppColors.corVerdeClaro.withOpacity(0.3), width: 0),
                      borderRadius: const BorderRadius.all(Radius.circular(15))),
                  padding: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 13),
                  child: const TextWidget(
                    text: 'Aprovado',
                    textColor: AppColors.corVerdeSelecao,
                    fontWeight: FontWeight.w400,
                    fontSize: TextFonts.fonteTextoPequenoMenor,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
