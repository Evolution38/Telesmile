// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:telesmile/appbar.dart';
import 'package:telesmile/blind.dart';
import 'package:telesmile/contactus.dart';
import 'package:telesmile/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Commited to excel in Oral health care for',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              "Everyone in the society",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 35,
              crossAxisSpacing:4,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                GestureDetector(
                  child: Orals(
                      image:
                          'assets/Rectangle 2.jpg',
                      oral: 'Blind'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blind()));
                  },
                ),
                Orals(
                    image:
                        'assets/Rectangle 3.png',
                    oral: 'Deaf'),
                Orals(
                  image:
                      'assets/Rectangle 6.png',
                  oral: 'Autistic',
                ),
                Orals(
                  image:
                      'assets/Rectangle 7 (3).png',
                  oral: 'Mentally Retard',
                ),
                Orals(
                  image:
                      'assets/Rectangle 6 (1).png',
                  oral: 'Down Syndrome',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactUs()));
              },
              icon: Icon(
                Icons.call,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFCB117),
                  minimumSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              label: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),

    );
  }
}

class Orals extends StatelessWidget {
  String? image;
  String? oral;

  Orals({Key? key, this.image, this.oral}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
                child: Image(
              image: AssetImage(image!),
              fit: BoxFit.fill,
            )
            ),
          ),
        ),
        Text(
          'Oral for',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          oral!,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFCB117),
          ),
        )
      ],
    );
  }
}
