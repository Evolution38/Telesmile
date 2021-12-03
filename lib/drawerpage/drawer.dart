// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:telesmile/drawerpage/privacypolicy.dart';
import 'package:telesmile/drawerpage/terms_conditions.dart';
import 'package:telesmile/home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer ( 
      child: ListView(
        children:  [
          DrawerHeader(
            child:Image(image: AssetImage('assets/Group 21.png')), 
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: (){
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.last_page_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Terms and Conditions",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onTap: (){
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TermsConditions()));
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
            onTap: (){
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PrivacyPolicy()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.last_page_outlined,
              color: Colors.black,
            ),
            title: Text(
              "Terms of Use",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}