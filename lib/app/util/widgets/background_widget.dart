import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          body: Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25), child: child),
        ),
      ),
    );
  }
}
