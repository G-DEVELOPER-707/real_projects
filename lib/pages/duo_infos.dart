import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_storage_/duo_list_kiril.dart';
import 'package:get_storage_/states.dart';

class DuoInfos extends StatefulWidget {
  DuoInfos({required this.index, Key? key}) : super(key: key);
  int index;

  @override
  State<DuoInfos> createState() => _DuoInfosState();
}

class _DuoInfosState extends State<DuoInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: lotin == true ? Text(duoList[widget.index].name,
          style: const TextStyle(fontSize: 16, color: Colors.black),) : Text(
          duoListKiril[widget.index].name,
          style: const TextStyle(fontSize: 16, color: Colors.black),),
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: lotin==true?Text(
            duoList[widget.index].duo,
            style: const TextStyle(fontSize: 16),
          ):Text(
            duoListKiril[widget.index].duo,
            style: const TextStyle(fontSize: 16),
          )
        ),
      ),
    );
  }
}
