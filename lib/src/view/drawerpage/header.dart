// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar Header(String header) {
  return AppBar(
    title: Text(header,style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
    centerTitle: true,
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

