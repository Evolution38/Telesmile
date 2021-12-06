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
    return Text(topic!,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ));
  }
}

class PrimaryText extends StatelessWidget {
  final fontFamily = 'Poppins';
  String? topic;
  bool? font;
  PrimaryText({Key? key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(topic!,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ));
  }
}

class AppText extends StatelessWidget {
  final fontFamily = 'Poppins';
  String? heading;
  AppText({Key? key, this.heading}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(heading!,
        style: TextStyle(
            fontFamily: fontFamily,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black));
  }
}

class English extends StatelessWidget {
  final fontFamily = 'Poppins';
  String? text;
  English({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: 17,
          fontWeight: FontWeight.w400,
        ));
  }
}

class Arabic extends StatelessWidget {
  final fontFamily = 'Almarai';
  String? arabic;
 Arabic({Key? key, this.arabic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Text(arabic!, style: TextStyle(fontFamily:fontFamily, fontSize: 18, fontWeight: FontWeight.w400),);
  }
}
