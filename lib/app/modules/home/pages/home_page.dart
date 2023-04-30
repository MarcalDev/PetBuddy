import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';

import '../widgets/home_post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: const [
          HomePostCard(
            nomeUsuario: 'Lar dos Aumigos',
            usernameUsuario: '@lardosaumigos',
            descricao:
                'Olá, eu sou Sophie, sou muito brincalhona e estou a procura de um dono! \n#MeAdota #Cachorro #Adoção',
            imagem: AssetsAplicativo.fotoSophie,
          )
        ],
      ),
    );
  }
}
