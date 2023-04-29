import 'package:flutter/material.dart';
import 'package:petbuddy/app/util/widgets/background_widget.dart';

import '../../../util/app_colors.dart';
import '../../../util/text_fonts.dart';
import '../../../util/widgets/text_widget.dart';

class CadastroBackgroundWidget extends StatefulWidget {
  final Widget child;
  final String title;
  const CadastroBackgroundWidget({super.key, required this.child, required this.title});

  @override
  State<CadastroBackgroundWidget> createState() => _CadastroBackgroundWidgetState();
}

class _CadastroBackgroundWidgetState extends State<CadastroBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
                color: AppColors.corBackground,
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextWidget(
                            text: 'CADASTRO DE PESSOA FÍSICA',
                            fontSize: TextFonts.fonteTituloPagina,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 1,
                        color: AppColors.corPreto,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: widget.child,
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
