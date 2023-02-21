import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../storage/get_storagies.dart';

class SalovatPage extends StatefulWidget {
  const SalovatPage({Key? key}) : super(key: key);

  @override
  State<SalovatPage> createState() => _SalovatPageState();
}

class _SalovatPageState extends State<SalovatPage> {
  int countSubhanalloh = int.parse(Subhanalloh.read("counterS") ?? "0");
  int countAlhamdulillah = int.parse(Alhamdulilliah.read("counterAl") ?? "0");
  int countAllohuAkbar = int.parse(AllohuAkbar.read("counterAlAk") ?? "0");
  int countSolliAla = int.parse(SolliAla.read("counterSA") ?? "0");
  int countTavba = int.parse(Astagfirulloh.read("counterAs") ?? "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange,
              Colors.deepOrangeAccent,
              Colors.orange,
              Colors.deepOrange,
              Colors.orange,
              Colors.deepOrangeAccent
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(70)),
                      child: const Text(
                        "Zikr va Salovatlar",
                        style: TextStyle(
                            fontSize: 65,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: "Billabong"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    height: 70,
                    padding: const EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Subhanalloh",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  countSubhanalloh = 0;
                                  Subhanalloh.write(
                                      "counterS", countSubhanalloh.toString());
                                  setState(() {});
                                },
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      color: Colors.orange,
                                      size: 40,
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 5,
                                      child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countSubhanalloh.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countSubhanalloh++;
                                  Subhanalloh.write(
                                      "counterS", countSubhanalloh.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.plus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    height: 70,
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Alhamdulillah",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  countAlhamdulillah = 0;
                                  Alhamdulilliah.write("counterAl",
                                      countAlhamdulillah.toString());
                                  setState(() {});
                                },
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      color: Colors.orange,
                                      size: 40,
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 5,
                                      child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countAlhamdulillah.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countAlhamdulillah++;
                                  Alhamdulilliah.write("counterAl",
                                      countAlhamdulillah.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.plus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    height: 70,
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Allohu Akbar",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  countAllohuAkbar = 0;
                                  AllohuAkbar.write("counterAlAk",
                                      countAllohuAkbar.toString());
                                  setState(() {});
                                },
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      color: Colors.orange,
                                      size: 40,
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 5,
                                      child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countAllohuAkbar.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countAllohuAkbar++;
                                  AllohuAkbar.write("counterAlAk",
                                      countAllohuAkbar.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.plus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    height: 70,
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Allohumma Solli A'la Sayyidina Muhammad",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  countSolliAla = 0;
                                  SolliAla.write(
                                      "counterSA", countSolliAla.toString());
                                  setState(() {});
                                },
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      color: Colors.orange,
                                      size: 40,
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 5,
                                      child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countSolliAla.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countSolliAla++;
                                  SolliAla.write(
                                      "counterSA", countSolliAla.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.plus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.black12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Istig'for [Tavba]",
                        style: TextStyle(
                            fontFamily: "Billabong",
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown,
                    ),
                    height: 70,
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Astag'firulloh",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  countTavba = 0;
                                  Astagfirulloh.write(
                                      "counterAs", countTavba.toString());
                                  setState(() {});
                                },
                                child: Stack(
                                  children: const [
                                    Icon(
                                      Icons.square,
                                      color: Colors.orange,
                                      size: 40,
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 5,
                                      child: Text(
                                        "C",
                                        style: TextStyle(fontSize: 26),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countTavba.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countTavba++;
                                  Astagfirulloh.write(
                                      "counterAs", countTavba.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.plus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  child: Container(
                    height: 150,
                    width: 190,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade500,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Ushbu sahifa sizga Zikr va Salovatlarni sanashga yordam beradi (xuddi tasbeh singari)",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2.0,

                          ),
                        ),
                      ),
                    ),
                  ),
                );
              });
        },
        child: Icon(
          CupertinoIcons.info,
          color: Colors.black,
        ),
        backgroundColor: Colors.brown,
        splashColor: Colors.brown.shade800,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
