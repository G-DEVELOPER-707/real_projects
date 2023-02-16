import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage_/models/duo_model.dart';

Widget duoItem(BuildContext context, DuoModel duo, int count) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height:116,
    color: Colors.brown[700],
    padding: const EdgeInsets.all(12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 2,color: Colors.black,),
        const SizedBox(height: 5,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              count.toString(),
              style: const TextStyle(
                  fontSize: 28,
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 35,
            ),
            SizedBox(width: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    duo.name,maxLines: 1,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: CupertinoColors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    duo.duo,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: CupertinoColors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [Icon(CupertinoIcons.chevron_forward)],
            ))
          ],
        ),
        const SizedBox(height: 5,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [Divider(
              thickness: 2,
              color: Colors.black,
            ),]
          ),
        ),
      ],
    ),
  );
}
