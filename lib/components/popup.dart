import 'package:flutter/material.dart';
import 'package:google_clone/utils/global.dart';

List<PopupMenuItem> popUps() {
  List<PopupMenuItem> res = [];

  int len = popupData.keys.length;

  int rowVal = len ~/ 3;

  // for (int i = 0; i < rowVal; i++) {
  //   res.add(PopupMenuItem(
  //     child: Row(
  //       children: for(int j = ),
  //     ),
  //   ));
  // }

  for (int i = 0; i < rowVal; i + 3) {
    for (int j = i; j < i + 3; j++) {
      res.add(
        PopupMenuItem(
          child: Row(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage(popupData[popupData.keys.toList()[j]]!),
                    height: 30,
                    width: 30,
                  ),
                  Text(
                    popupData.keys.toList()[j],
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
  }
  return res;
}
