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
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              color: AppColors.corBackground,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
