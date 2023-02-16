import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage_/pages/duolar_page.dart';
import 'package:get_storage_/pages/salovat_page.dart';
import 'package:get_storage_/pages/qazo_namozlar.dart';
import 'package:get_storage_/pages/settings_page.dart';
import 'package:get_storage_/pages/taqvim_page.dart';




class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _pages = [
    const Qazolar(),
    const SalovatPage(),
    const DuolarPage(),
    const TaqvimPage(),
    const SettingsPage()


  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPage],
      backgroundColor: Colors.brown,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown,
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {});
            currentPage = i;
          },
          type: BottomNavigationBarType.fixed,

          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(size: 30),
          // selectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.moon,),
              label: "Qazolar",

            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.moon),
              label: "Zikr"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.moon),
              label: "Duolar"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Taqvim"
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: "Sozlamalar"
            ),
          ]),
    );
  }
}

