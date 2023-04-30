import 'package:flutter/material.dart';
import 'package:petbuddy/app/modules/home/widgets/home_background_widget.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/widgets/text_field_widget.dart';

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
            SizedBox(
              height: 560,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => const HomePostCard(
                        nomeUsuario: 'Lar dos Aumigos',
                        usernameUsuario: '@lardosaumigos',
                        descricao:
                            'Olá, eu sou Sophie, sou muito brincalhona e estou a procura de um dono! \n#MeAdota #Cachorro #Adoção',
                        imagem: AssetsAplicativo.fotoSophie,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
