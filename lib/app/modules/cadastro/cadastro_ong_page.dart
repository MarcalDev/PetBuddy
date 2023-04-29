import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/text_fonts.dart';
import 'package:petbuddy/app/util/widgets/background_widget.dart';
import 'package:petbuddy/app/util/widgets/button_widget.dart';
import 'package:petbuddy/app/util/widgets/text_field_widget.dart';
import 'package:petbuddy/app/util/widgets/text_widget.dart';

class CadastroOngPage extends StatefulWidget {
  const CadastroOngPage({super.key});

  @override
  State<CadastroOngPage> createState() => _CadastroOngPageState();
}

class _CadastroOngPageState extends State<CadastroOngPage> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
        child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextWidget(
                    text: 'Cadastro de ONG',
                    fontSize: TextFonts.fonteTituloPagina,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
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
                      SizedBox(
                        height: 20,
                      ),
                      const TextFieldWidget(
                        borderColor: AppColors.corPreto,
                        hintText: '',
                        labelText: 'Nome/Razão Social',
                      ),
                      SizedBox(
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
                      SizedBox(
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
                      SizedBox(
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
                      SizedBox(
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
                      SizedBox(
                        height: 20,
                      ),
                      const TextFieldWidget(
                        borderColor: AppColors.corPreto,
                        hintText: '',
                        labelText: 'E-mail',
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(alignment: Alignment.center, child: ButtonWidget(buttonText: 'FINALIZAR', onPressed: () {}))
                    ],
                  ),
                ),
              ],
            )));
  }
}
