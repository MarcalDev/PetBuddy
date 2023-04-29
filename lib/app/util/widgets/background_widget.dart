import 'package:flutter/material.dart';

import '../app_colors.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({super.key, required this.child});

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
                padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
