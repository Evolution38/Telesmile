// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telesmile/about.dart';
import 'package:telesmile/contactus.dart';
import 'package:telesmile/home.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  var _currentIndex = 0;
  final navigationscreen = [
    HomePage(),
    AboutPage(),
    ContactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: /*navigationscreen[_currentIndex],*/
      Stack(
        children: 
          navigationscreen
              .asMap()
              .map((i, screen) => MapEntry(
                    i,
                    Offstage(
                      offstage: _currentIndex != i,
                      child: screen,
                    ),
                  ))
              .values
              .toList()
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFCB117),
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
        ],
      ),
    );
  }
}
