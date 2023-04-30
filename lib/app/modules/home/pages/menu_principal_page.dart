import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petbuddy/app/util/app_colors.dart';
import 'package:petbuddy/app/util/assets_aplicativo.dart';
import 'package:petbuddy/app/util/text_fonts.dart';

import 'home_page.dart';

class MenuPrincipalPage extends StatefulWidget {
  const MenuPrincipalPage({super.key});

  @override
  State<MenuPrincipalPage> createState() => _MenuPrincipalPageState();
}

class _MenuPrincipalPageState extends State<MenuPrincipalPage> {
  int tabIndex = 0;
  late List<Widget> listScreens;

  @override
  void initState() {
    super.initState();
    listScreens = [
      HomePage(),
      HomePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(          
          body: listScreens[tabIndex],
          floatingActionButton: Container(
            child: Container(
              height: 60,
              width: 60,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: AppColors.corPadraoAplicativo,
                  child: Icon(Icons.add_rounded, size: 40),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomNavigationBar(           
              selectedItemColor: AppColors.corPadraoAplicativo,
              unselectedItemColor: AppColors.corTabBarUnselected,
              backgroundColor: AppColors.corTabBar,
              selectedFontSize: TextFonts.fonteTextoPequeno,
              unselectedFontSize: TextFonts.fonteTextoPequeno,
              currentIndex: tabIndex,
              onTap: (int index) {
                setState(() {
                  tabIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AssetsAplicativo.iconeHome),
                  label: 'Quero Adotar',                  

                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AssetsAplicativo.iconeQueroAjudar),
                  label: 'Quero Ajudar',
                ),
              ]),
          backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
