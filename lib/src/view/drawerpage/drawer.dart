// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telesmile/home.dart';
import 'package:telesmile/src/view/drawerpage/privacypolicy.dart';
import 'package:telesmile/src/view/drawerpage/terms_conditions.dart';
import 'package:telesmile/src/view/drawerpage/termsuse.dart';
import 'package:telesmile/src/view/widgets/navscreen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image(image: AssetImage('assets/Group 21.png')),
          ),
          // ListTile(
          //   leading: Icon(
          //     Icons.home,
          //     color: Colors.black,
          //   ),
          //   title: Text(
          //     "Home",
          //     textScaleFactor: 1.2,
          //     style: TextStyle(
          //       color: Colors.black,
          //     ),
          //   ),
          //   onTap: () {
          //     Navigator.pushAndRemoveUntil(
          //         context,
          //         MaterialPageRoute(builder: (_) => NavScreen()),
          //         (route) => false);
          //   },
          // ),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Colors.black,
            ),
            title: Text(
              "Terms and Conditions",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => TermsConditions()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.security,
              color: Colors.black,
            ),
            title: Text(
              "Privacy Policy",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PrivacyPolicy()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.description_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Terms of Use",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => TermsUse()));
            },
          ),
        ],
      ),
    );
  }
}
