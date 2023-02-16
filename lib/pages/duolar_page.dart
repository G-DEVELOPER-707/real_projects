
import 'package:flutter/material.dart';
import 'package:get_storage_/states.dart';

import '../items/duo_item.dart';
import 'duo_infos.dart';

class DuolarPage extends StatefulWidget {
  const DuolarPage({Key? key}) : super(key: key);

  @override
  State<DuolarPage> createState() => _DuolarPageState();
}

class _DuolarPageState extends State<DuolarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Duolar"),backgroundColor: Colors.brown,foregroundColor: Colors.black,centerTitle: true,),
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          itemCount: duoList.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  setState(() {});
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DuoInfos(index: index)),
                  );
                },
                child: duoItem(context, duoList[index], index + 1));
          }),
    ));
  }
}

// Card(
// margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(20)),
// child: Stack(
// children: [
// // Container(
// //   height: MediaQuery.of(context).size.height*0.33,
// //   width: double.infinity,
// //   decoration: BoxDecoration(
// //     borderRadius: BorderRadius.circular(20),
// //   ),
// //   child: Image.network(
// //     products[index].image,
// //     //'https://avatars.mds.yandex.net/i?id=778a4bb14d485f96b7dc8ba017bedb3f64dbe58f-7545599-images-thumbs&n=13',
// //   //fit: BoxFit.cover,
// //   ),
// // ),
// Container(
// height: MediaQuery.of(context).size.height * 0.33,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// image: const DecorationImage(
// fit: BoxFit.cover,
// image: AssetImage('assets/images/makka_2.jpg'),
// ),
// ),
// ),
// ],
// ),
// )
