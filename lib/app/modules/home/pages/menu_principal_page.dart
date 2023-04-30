import 'package:flutter/material.dart';

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
      HomePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        color: Colors.yellow,
        home: Scaffold(          
          body: listScreens[tabIndex],
          bottomNavigationBar: BottomNavigationBar(            
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              backgroundColor: Theme.of(context).primaryColor,
              currentIndex: tabIndex,
              onTap: (int index) {
                setState(() {
                  tabIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Tab1',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.report_problem),
                  label: 'Tab2',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Tab3',
                ),
              ]),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
