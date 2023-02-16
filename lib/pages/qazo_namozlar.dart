import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../storage/get_storagies.dart';

class Qazolar extends StatefulWidget {
  const Qazolar({Key? key}) : super(key: key);

  @override
  State<Qazolar> createState() => _QazolarState();
}

class _QazolarState extends State<Qazolar> {
  int countBomdod = int.parse(bomdod.read("counterB") ?? "0");
  int countPeshin = int.parse(peshin.read("counterP") ?? "0");
  int countAsr = int.parse(asr.read("counterA") ?? "0");
  int countShom = int.parse(shom.read("counterSh") ?? "0");
  int countXufton = int.parse(xufton.read("counterX") ?? "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(70)),
                    child: const Text(
                      "Qazo namozlar",
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "Billabong",
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
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              CupertinoIcons.sunrise,
                              size: 40,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Bomdod",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (countBomdod > 0) countBomdod -= 1;
                                  bomdod.write(
                                      "counterB", countBomdod.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countBomdod.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countBomdod++;
                                  bomdod.write(
                                      "counterB", countBomdod.toString());
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
                    height: 30,
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
                            Icon(
                              CupertinoIcons.sun_max,
                              size: 40,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Peshin",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (countPeshin > 0) countPeshin -= 1;
                                  peshin.write(
                                      "counterP", countPeshin.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countPeshin.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countPeshin++;
                                  peshin.write(
                                      "counterP", countPeshin.toString());
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
                    height: 30,
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
                            Icon(
                              CupertinoIcons.sun_haze,
                              size: 40,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Asr",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (countAsr > 0) countAsr -= 1;
                                  asr.write("counterA", countAsr.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countAsr.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countAsr++;
                                  asr.write("counterA", countAsr.toString());
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
                    height: 30,
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
                            Icon(
                              CupertinoIcons.sunset,
                              size: 40,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Shom",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (countShom > 0) countShom -= 1;
                                  shom.write("counterSh", countShom.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countShom.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countShom++;
                                  shom.write("counterSh", countShom.toString());
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
                    height: 30,
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
                            Icon(
                              CupertinoIcons.moon_stars,
                              size: 40,
                              color: Colors.orange,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Xufton",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (countXufton > 0) countXufton -= 1;
                                  xufton.write(
                                      "counterX", countXufton.toString());
                                  setState(() {});
                                },
                                child: const Icon(
                                  CupertinoIcons.minus_circle_fill,
                                  color: Colors.orange,
                                  size: 40,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                countXufton.toString(),
                                style: const TextStyle(fontSize: 25),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              InkWell(
                                onTap: () {
                                  countXufton++;
                                  xufton.write(
                                      "counterX", countXufton.toString());
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
                  // SizedBox(height: 10,),
                  // Row(mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // children: [InkWell(child: Icon(CupertinoIcons.info),)],)
                ],
              ),
            ),
          ),
        ),
      ),
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
                          "Ushbu sahifada siz qazo qilgan namozlaringizni sanab qo'yishingiz mumkin",
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
