import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../states.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sozlamalar".tr(),
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: const BorderSide(color: Colors.black, width: 3)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.brown,
                        title: Text("Tilni o'zgartirish".tr()),
                        content: Text("Tilni tanlang\n"
                            "Тилни танланг"),
                        actions: [
                          TextButton(
                            child: Text(
                              "O'zbek ( lotin harflari )",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              lotin = true;
                              context.setLocale(const Locale('uz', "UZ"));
                              setState(() {});
                              Navigator.pop(context);
                            },
                          ),
                          TextButton(
                            child: Text(
                              "Ўзбек ( кирил ҳарфлари )",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            onPressed: () {
                              lotin = false;
                              context.setLocale(const Locale('ru', "RU"));
                              setState(() {});

                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  "Tilni o'zgartirish".tr(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(220, 50),
                    backgroundColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: const BorderSide(color: Colors.black, width: 3)),
                onPressed: () {
                  Navigator.pushNamed(context, '/ContactPage');
                },
                child: Text(
                  "Ilova haqida".tr(),
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
