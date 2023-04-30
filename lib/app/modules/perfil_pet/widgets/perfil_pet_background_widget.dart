import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

import '../../../util/app_colors.dart';
import '../../../util/assets_aplicativo.dart';

class PerfilPetBackgroundWidget extends StatelessWidget {
  final Widget child;
  const PerfilPetBackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            child: Scaffold(
                body: Stack(
      children: [
        SvgPicture.asset(AssetsAplicativo.headerLogin, fit: BoxFit.fitHeight),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: AppColors.corBranco,
                  ),
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        text: 'Me Conheça',
                        fontSize: TextFonts.fontTituloNavegacao,
                        textColor: AppColors.corBranco,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        color: AppColors.corBranco,
                        border: Border.all(color: AppColors.corBranco, width: 0),
                        borderRadius: const BorderRadius.all(Radius.circular(30))),
                    child: Image.asset(
                      AssetsAplicativo.fotoUsuario,
                      height: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              child
            ],
          ),
        )
      ],
    ))));
  }
}
