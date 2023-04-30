import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/app_colors.dart';
import '../../../util/assets_aplicativo.dart';
import '../../../util/text_fonts.dart';
import '../../../util/widgets/text_widget.dart';

class QueroAdotarBackgroundWidget extends StatelessWidget {
  final Widget child;
  const QueroAdotarBackgroundWidget({super.key, required this.child});

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
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: AppColors.corBranco,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        text: 'Quero Adotar',
                        fontSize: TextFonts.fontTituloNavegacao,
                        textColor: AppColors.corBranco,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(child: child)
            ],
          ),
        )
      ],
    ))));
  }
}
