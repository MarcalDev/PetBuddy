import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

class HomePostCard extends StatelessWidget {
  final String nomeUsuario;
  final String usernameUsuario;
  final String descricao;
  final String imagem;
  const HomePostCard(
      {super.key,
      required this.nomeUsuario,
      required this.usernameUsuario,
      required this.descricao,
      required this.imagem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AssetsAplicativo.profileONG),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(text: nomeUsuario),
                      const SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(AssetsAplicativo.iconCheck),
                      const SizedBox(
                        width: 10,
                      ),
                      TextWidget(text: usernameUsuario),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(width: 315, child: TextWidget(text: descricao, maxLines: 5)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(width: 315, child: Image.asset(imagem)),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 315,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.corPadraoAplicativo, width: 1.5),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                          child: const TextWidget(
                            text: 'Me conheça',
                            textColor: AppColors.corPadraoAplicativo,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetsAplicativo.iconLike,
                              height: 22,
                            ),
                            const SizedBox(width: 20),
                            SvgPicture.asset(
                              AssetsAplicativo.iconMensagem,
                              height: 22,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
