// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';

class LocalText extends StatelessWidget {
  final fontFamily = 'Poppins';
  String? topic;
  bool? font;
  LocalText({Key? key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      topic!,
      style: TextStyle(
          fontFamily: fontFamily, fontSize: 25, fontWeight:FontWeight.w500),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final fontFamily = 'Poppins';
    // String? topic;
    return Scaffold(
      body: Column(
          // children: [Text(topic!, style: TextStyle(fontFamily: fontFamily, fontSize: 50, fontWeight: FontWeight.w500))],
          ),
    );
  }
}

class English extends StatelessWidget {
  const English({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final fontFamily = 'Poppins';
    // String? topic;
    return Scaffold(
      body: Column(
          // children: [Text(topic!, style: TextStyle(fontFamily: fontFamily, fontSize: 50, fontWeight: FontWeight.w500))],
          ),
    );
  }
}

class Arabic extends StatelessWidget {
  const Arabic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final fontFamily = 'Poppins';
    // String? topic;
    return Scaffold(
      body: Column(
          // children: [Text(topic!, style: TextStyle(fontFamily: fontFamily, fontSize: 50, fontWeight: FontWeight.w500))],
          ),
    );
  }
}
