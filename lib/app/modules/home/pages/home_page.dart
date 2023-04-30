import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/modules/home/widgets/home_background_widget.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/widgets/text_field_widget.dart';

import '../../../util/app_colors.dart';
import '../../../util/widgets/text_widget.dart';
import '../widgets/home_post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeBackgroundWidget(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
                alignment: Alignment.topCenter,
                child: TextFieldWidget(hintText: 'Pesquisar', prefixIcon: Icon(Icons.search))),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.corPadraoAplicativo,
                        border: Border.all(color: AppColors.corPadraoAplicativo, width: 1.5),
                        borderRadius: const BorderRadius.all(Radius.circular(15))),
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: const TextWidget(
                      text: 'Adoção',
                      textColor: AppColors.corBranco,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.corPadraoAplicativo,
                        border: Border.all(color: AppColors.corPadraoAplicativo, width: 1.5),
                        borderRadius: const BorderRadius.all(Radius.circular(15))),
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: const TextWidget(
                      text: 'Lar Temporário',
                      textColor: AppColors.corBranco,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(AssetsAplicativo.iconeFiltro)
              ],
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 520,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const HomePostCard(
                            nomeUsuario: 'Lar dos Aumigos',
                            usernameUsuario: '@lardosaumigos',
                            descricao:
                                'Olá, eu sou Sophie, sou muito brincalhona e estou a procura de um dono! \n#MeAdota #Cachorro #Adoção',
                            imagem: AssetsAplicativo.fotoSophie,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            height: 1,
                            color: AppColors.corCinza,
                          ),
                          const SizedBox(
                            height: 30,
                          )
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
