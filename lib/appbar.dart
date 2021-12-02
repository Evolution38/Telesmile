// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

AppBar MyAppBar() {
  return AppBar(
    title: Image.asset(
      'assets/Group 21.png',
      fit: BoxFit.contain,
      height: 52,
    ),
    // title: Image.asset(
    //   'assets/Group 21.png',
    //   fit: BoxFit.cover,
    // ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    iconTheme: const IconThemeData(color: Colors.black),
  );
}
