import 'package:flutter/material.dart';

AppBar MyAppBar() {
    return AppBar(
      title: Image.asset(
        'assets/Group 21.png',
        fit: BoxFit.cover,
        height: 60,
        width: 50,
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
