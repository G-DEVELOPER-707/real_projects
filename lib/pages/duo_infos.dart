import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        title: Text(duoList[widget.index].name,style: TextStyle(fontSize: 16),),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Text(
            duoList[widget.index].duo,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
