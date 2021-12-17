// ignore_for_file: must_be_immutable, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

AppBar Header(
  String header,
) {
  return AppBar(
    title: Text(
      
      header,
      // textWidthBasis: TextWidthBasis.longestLine,
      // softWrap: true,
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      // overflow: TextOverflow.fade,
      textDirection: TextDirection.ltr,
      overflow: TextOverflow.fade,
      
    ),
    // centerTitle: true,
    // Marquee(
    //   text: header,
    //   scrollAxis: Axis.horizontal,
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   velocity: 100.0,
    //   accelerationDuration: const Duration(seconds: 1),
    //   decelerationDuration: const Duration(milliseconds: 500)
    // ),
    /*Text(header,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)*/
    // centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    iconTheme: const IconThemeData(color: Colors.black),
  );
}

// class Header extends StatelessWidget {
//   String? header;
//   Header({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(header!),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//     );
//   }
// }
