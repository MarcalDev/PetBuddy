import 'package:flutter/material.dart';
import 'app/modules/home/pages/menu_principal_page.dart';
import 'app/modules/login/pages/login_page.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}
