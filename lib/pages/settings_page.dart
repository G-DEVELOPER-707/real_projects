import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          title: Text("Bog'lanish"),
          backgroundColor: Colors.brown,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        border: Border.all(
                          width: 4,color: Colors.black

                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(70),
                          child: Image(
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
                SizedBox(height: 10),
                Text(
                  "G'OLIB MA'MUROVICH",

                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,letterSpacing: 4),
                ),
                Text("(Flutter Developer)",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(mainAxisAlignment: MainAxisAlignment.center,
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
                        SizedBox(height: 7,),
                        Text("Qo'ng'iroq qilish",style: TextStyle(),)
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            launchUrl(
                                Uri.parse("https://t.me/QADRIMGA_YET_TUPOY"),
                                mode: LaunchMode.externalApplication);
                          },
                          child: SizedBox(
                            height: 80,
                            width: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0),
                              child: Image.asset("assets/images/telegram_z.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text("Telegram Profil")
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
                            height: 60,
                            width: 60,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(300),
                              child: Image.asset(
                                  "assets/images/github_icon.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text("GitHub")
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(
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
