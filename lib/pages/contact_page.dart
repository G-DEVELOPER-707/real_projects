

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ilova haqida",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Colors.black, fontSize: 22),
          ),
          backgroundColor: Colors.brown,
          foregroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  width: 380,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 90,
                        width: 70,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          child: Image.asset('assets/images/makka_2.jpg'),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'Dinimiz Islom ilovasi',
                                  style: TextStyle(
                                      fontSize: 33, fontFamily: "Billabong",),
                                ),
                                Text(
                                  "Versiya - 1.0.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        width: 70,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          child: Image.asset(
                            'assets/images/makka.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Text("Bog'lanish",style: TextStyle(fontSize: 20,),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(width: 4, color: Colors.black),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: const Image(
                            image: AssetImage("assets/images/Super.jpg"),
                            width: 130,
                            height: 130,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  "G'OLIB MA'MUROVICH",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4.3),
                ),
                const Text(
                  "(Flutter Developer)",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            launchUrl(Uri.parse("tel:/+998777778941"));
                          },
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(300),
                              child: Image.asset("assets/images/call.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          "Qo'ng'iroq qilish",
                          style: TextStyle(),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            launchUrl(
                                Uri.parse("https://t.me/QADRIMGA_YET_TUPOY"),
                                mode: LaunchMode.externalApplication);
                          },
                          child: SizedBox(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset(
                                  "assets/images/telegram_zaybal.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text("Telegram")
                      ],
                    ),
                    // SizedBox(width:1,),
                    InkWell(
                      onTap: () async {
                        launchUrl(
                            Uri.parse(
                              "https://github.com/G-DEVELOPER-707",
                            ),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(300),
                              child: Image.asset(
                                  "assets/images/github_icon.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("GitHub")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // SizedBox(width: 1,),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            launchUrl(
                                Uri.parse(
                                    "https://instagram.com/muzikant_707?igshid=YmMyMTA2M2Y="),
                                mode: LaunchMode.externalApplication);
                          },
                          child: SizedBox(
                            height: 63,
                            width: 63,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset("assets/images/instagram.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text("Instagram")
                      ],
                    ),
                    InkWell(
                      onTap: () async {
                        launchUrl(
                            Uri.parse(
                              "https://github.com/G-DEVELOPER-707",
                            ),
                            mode: LaunchMode.externalApplication);
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(300),
                              child: Image.asset(
                                  "assets/images/github_icon.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("GitHub")
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}

void _sms() {
  final Uri smsLaunchUri = Uri(
    scheme: 'sms',
    path: '+998777778941',
    queryParameters: <String, String>{
      'body': Uri.encodeComponent('Salom'),
    },
  );
  launchUrl(smsLaunchUri);
}
