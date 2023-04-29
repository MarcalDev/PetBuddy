import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/app_colors.dart';
import '../../../util/assets_aplicativo.dart';

class LoginBackgroundWidget extends StatelessWidget {
  final Widget child;
  const LoginBackgroundWidget({super.key, required this.child});

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
              child: Column(
                children: [
                  SvgPicture.asset(AssetsAplicativo.ilustracaoLogin, fit: BoxFit.fitHeight),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
