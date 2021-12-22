// ignore_for_file: prefer_const_constructors, unrelated_type_equality_checks
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:telesmile/home.dart';

import 'about.dart';
import 'contactus.dart';



class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final PersistentTabController _persistentTabController =
      PersistentTabController(initialIndex: 0);
  // var _currentIndex = 0;
  final _screens = [
    HomePage(),
    AboutPage(),
    ContactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        neumorphicProperties: NeumorphicProperties(showSubtitleText: true),
        navBarHeight: 55,
        controller: _persistentTabController,
        screens: _screens,
        items: _navBarItems(),
        confineInSafeArea: true,
        backgroundColor: Color(0xFFFCB117),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: false,
        // hideNavigationBar: true,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: false,
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        inactiveIcon: Icon(Icons.home_outlined),
        title: ('Home'),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.group_rounded),
        inactiveIcon: Icon(Icons.group_outlined),
        title: ('About'),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.phone_rounded),
        inactiveIcon: Icon(Icons.phone_outlined),
        title: ('Contact Us'),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }
}
      /*_screens[_currentIndex],*/
      //     Stack(
      //         children: _screens
      //             .asMap()
      //             .map(
      //               (i, screen) => MapEntry(
      //                 i,
      //                 Offstage(
      //                   offstage: _currentIndex != i,
      //                   child: screen,
      //                 ),
      //               ),
      //             )
      //             .values
      //             .toList()
      //             ..add(Offstage(

      //             ))),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: const Color(0xFFFCB117),
      //   selectedItemColor: Colors.black,
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
      //   ],
      // ),
  //     PersistentTabView(
  //       context,
  //       neumorphicProperties: NeumorphicProperties(showSubtitleText: true),
  //       navBarHeight: 55,
  //       controller: _persistentTabController,
  //       screens: _screens,
  //       items: _navBarItems(),
  //       confineInSafeArea: true,
  //       backgroundColor: Color(0xFFFCB117),
  //       handleAndroidBackButtonPress: true,
  //       resizeToAvoidBottomInset: true,
  //       stateManagement: false,
  //       // hideNavigationBar: ,
  //       hideNavigationBarWhenKeyboardShows: true,
  //       popAllScreensOnTapOfSelectedTab: true,
  //       popActionScreens: PopActionScreensType.all,
  //       screenTransitionAnimation: ScreenTransitionAnimation(
  //         animateTabTransition: false,
  //       ),
  //       navBarStyle: NavBarStyle.style6,
  //     ),
    // );
  // }
// }
  // List<PersistentBottomNavBarItem> _navBarItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.home),
  //       inactiveIcon: Icon(Icons.home_outlined),
  //       title: ('Home'),
  //       activeColorPrimary: Colors.black,
  //       inactiveColorPrimary: Colors.black,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.group_rounded),
  //       inactiveIcon: Icon(Icons.group_outlined),
  //       title: ('About'),
  //       activeColorPrimary: Colors.black,
  //       inactiveColorPrimary: Colors.black,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(Icons.phone_rounded),
  //       inactiveIcon: Icon(Icons.phone_outlined),
  //       title: ('Contact Us'),
  //       activeColorPrimary: Colors.black,
  //       inactiveColorPrimary: Colors.black,
  //     ),
  //   ];
  // }
// }

      // body: /*navigationscreen[_currentIndex],*/   
      // Stack(
      //   children: 
      //     navigationscreen
      //         .asMap()
      //         .map((i, screen) => MapEntry(
      //               i,
      //               Offstage(
      //                 offstage: _currentIndex != i,
      //                 child: screen,
      //               ),
      //             ))
      //         .values
      //         .toList()
      // ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: const Color(0xFFFCB117),
      //   selectedItemColor: Colors.black,
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
      //   ],
      // ),