import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../states.dart';

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
        title: Text(
          "Ilova haqida".tr(),
          style: TextStyle(
              fontWeight: FontWeight.w700, color: Colors.black, fontSize: 22),
        ),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.black,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                      SizedBox(
                        height: 90,
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
                              children: [
                                Text('Dinimiz Islom ilovasi'.tr(),
                                    style: lotin == true
                                        ? TextStyle(
                                            fontSize: 33,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontFamily: "Billabong",
                                          )
                                        : TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          )),
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
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Dasturchi",
                  style: TextStyle(fontSize: 30, fontFamily: "Billabong"),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                        decoration: BoxDecoration(),
                        padding: const EdgeInsets.all(2),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/Image');
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: const Image(
                              image: AssetImage("assets/images/2.jpg"),
                              width: 130,
                              height: 130,
                              fit: BoxFit.cover,
                            ),
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
                Text(
                  "DEVELOPER_707",
                  style: TextStyle(color: Colors.grey.shade400),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
