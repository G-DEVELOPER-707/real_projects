import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TaqvimPage extends StatefulWidget {
  const TaqvimPage({Key? key}) : super(key: key);

  @override
  State<TaqvimPage> createState() => _TaqvimPageState();
}

class _TaqvimPageState extends State<TaqvimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          launchUrl(
                            Uri.parse(
                              "https://namozvaqti.uz/ramazon/toshkent",
                            ),
                          );
                        },
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.black),
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.calendar_month_outlined,color: Colors.green,
                            size: 90,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Ramazon Taqvimi",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500,color: Colors.greenAccent),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          launchUrl(
                            Uri.parse(
                              "https://islom.uz/prayertimes",
                            ),
                          );
                        },
                        child: Container(

                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.black),
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.watch_later_outlined,color: Colors.green,
                            size: 90,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Namoz Vaqtlari",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500,color: Colors.greenAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
