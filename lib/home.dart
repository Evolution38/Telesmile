// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Image.asset(
          'assets/Group 21.png',
          fit: BoxFit.cover,
          height: 60,
          width: 50,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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
              '"Everyone in the society"',
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
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: [
                GestureDetector(
                  child: Orals(
                      image:
                          'https://image.freepik.com/free-photo/blind-man-people-with-disability-handicapped-person-everyday-life-visually-impaired-man-with-walking-stick-descending-steps-city-park_1157-40249.jpg',
                      oral: 'Blind'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Blind()));
                  },
                ),
                Orals(
                    image:
                        'https://image.freepik.com/free-photo/couple-talking-using-sign-language_23-2148572502.jpg',
                    oral: 'Deaf'),
                Orals(
                  image:
                      'https://image.freepik.com/free-photo/portrait-sad-little-girl-sitting-isolated-blue-studio-background-how-it-feels-be-autist-modern-problems-new-vision-social-issues-concept-autism-childhood-healthcare-medicine_155003-36538.jpg',
                  oral: 'Autistic',
                ),
                Orals(
                  image:
                      'https://image.freepik.com/free-photo/little-girls-playing-new-fidget-toy-popular-with-children-helps-them-concentrate_169016-12078.jpg',
                  oral: 'Mentally Retard',
                ),
                Orals(
                  image:
                      'https://image.freepik.com/free-photo/happy-woman-girl-with-down-syndrome-painting-each-other-s-faces_23-2148464633.jpg',
                  oral: 'Down Syndrome',
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
              child: Image(
            image: NetworkImage(image!),
            fit: BoxFit.cover,
          )
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
