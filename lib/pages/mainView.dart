import 'package:easy_localization/easy_localization.dart';
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
          items:  [
            BottomNavigationBarItem(
              icon: SizedBox(
                height:30,
                width:35,child: Image.asset('assets/images/pngimg.com - islam_PNG51 (1).png',fit: BoxFit.cover,),),
              label: "Qazolar".tr(),

            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height:32,
                width:35,child: Image.asset('assets/images/pngimg.com - islam_PNG11 (1).png',fit: BoxFit.cover,),),
              label: "Zikr".tr()
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height:30,
                width:35,child: Image.asset('assets/images/pngimg.com - islam_PNG29.png',fit: BoxFit.cover,),),
              label: "Duolar".tr()
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: "Taqvim".tr()
            ),
             BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: "Sozlamalar".tr()
            ),
          ]),
    );
  }
}

