import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/background_widget.dart';
import 'package:petbuddy/app/util/widgets/button_widget.dart';
import 'package:petbuddy/app/util/widgets/text_field_widget.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

import '../widgets/cadastro_background.dart';

class CadastroOngPage extends StatefulWidget {
  const CadastroOngPage({super.key});

  @override
  State<CadastroOngPage> createState() => _CadastroOngPageState();
}

class _CadastroOngPageState extends State<CadastroOngPage> {
  @override
  Widget build(BuildContext context) {
    return CadastroBackgroundWidget(
        title: 'Cadastro de ONG',
        child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const TextFieldWidget(
                        borderColor: AppColors.corPreto,
                        hintText: '',
                        labelText: 'CNPJ',
                        suffixIcon: Icon(Icons.search),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextFieldWidget(
                        borderColor: AppColors.corPreto,
                        hintText: '',
                        labelText: 'Nome/Razão Social',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Telefone',
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'CEP',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Cidade',
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Estado',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Logradouro',
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          TextFieldWidget(
                            borderColor: AppColors.corPreto,
                            hintText: '',
                            labelText: 'N°',
                            width: 60,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Bairro',
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                            child: TextFieldWidget(
                              borderColor: AppColors.corPreto,
                              hintText: '',
                              labelText: 'Complemento',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextFieldWidget(
                        borderColor: AppColors.corPreto,
                        hintText: '',
                        labelText: 'E-mail',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                          alignment: Alignment.center, child: ButtonWidget(buttonText: 'FINALIZAR', onPressed: () {})),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
