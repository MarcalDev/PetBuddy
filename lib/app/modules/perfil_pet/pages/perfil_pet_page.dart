import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/button_widget.dart';

import '../../../util/widgets/text_widget.dart';
import '../../quero_adotar/pages/quero_adotar_page.dart';
import '../widgets/perfil_pet_background_widget.dart';

class PerfilPetPage extends StatefulWidget {
  const PerfilPetPage({super.key});

  @override
  State<PerfilPetPage> createState() => _PerfilPetPageState();
}

class _PerfilPetPageState extends State<PerfilPetPage> {
  @override
  Widget build(BuildContext context) {
    return PerfilPetBackgroundWidget(
        child: Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  AssetsAplicativo.imagemPet,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Row(
                    children: [
                      const TextWidget(
                        text: '@lardosaumigos',
                        textColor: AppColors.corBranco,
                        fontSize: TextFonts.fonteTextoPequenoMenor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SvgPicture.asset(
                        AssetsAplicativo.iconCheckBranco,
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TextWidget(
              text: 'SHOPHIE, 7',
              fontSize: TextFonts.fonteTextField,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const TextWidget(
              text: 'Profile',
              fontWeight: FontWeight.bold,
              textColor: AppColors.corPadraoAplicativo,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Meu Peso',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: '7kgs', textColor: AppColors.corCinza),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Raça',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Lhasa', textColor: AppColors.corCinza),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Castração',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Sim', textColor: AppColors.corCinza),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Idade',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: '7 anos', textColor: AppColors.corCinza),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Porte',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Pequeno', textColor: AppColors.corCinza),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Vacinação',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Sim', textColor: AppColors.corCinza),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Espécie',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Cachorro', textColor: AppColors.corCinza),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        TextWidget(
                          text: 'Sexo',
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(text: 'Feminino', textColor: AppColors.corCinza),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const TextWidget(
              text: 'Endereço',
              fontWeight: FontWeight.bold,
              textColor: AppColors.corPreto,
            ),
            const SizedBox(
              height: 5,
            ),
            const TextWidget(
                text: 'Rua dos Radio Amadores 3-47, \nJardim Brasil, Bauru', textColor: AppColors.corCinza),
            const SizedBox(
              height: 25,
            ),
            const TextWidget(
              text: 'Minha Personalidade',
              fontWeight: FontWeight.bold,
              textColor: AppColors.corPadraoAplicativo,
            ),
            const SizedBox(
              height: 5,
            ),
            const TextWidget(
                text: 'Sou brincalhona e adoro brincar com garrafas plásticas por aí!', textColor: AppColors.corCinza),
            const SizedBox(
              height: 25,
            ),
            const TextWidget(
              text: 'Necessidades',
              fontWeight: FontWeight.bold,
              textColor: AppColors.corPadraoAplicativo,
            ),
            const SizedBox(
              height: 5,
            ),
            const TextWidget(text: 'Não Tenho.', textColor: AppColors.corCinza),
            const SizedBox(
              height: 25,
            ),
            ButtonWidget(
              buttonText: 'QUERO ADOTAR!',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const QueroAdotarPage(),
                ),
              ),
              buttonColor: AppColors.corPadraoAplicativo,
              textColor: AppColors.corBranco,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AssetsAplicativo.iconMensagem,
                  height: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const TextWidget(
                  text: 'Converse com o Tutor',
                  textColor: AppColors.corCinzaMedio,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    ));
  }
}
