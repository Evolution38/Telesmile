// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:telesmile/blind.dart';
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
          'assets/image.png',
          fit: BoxFit.cover,
          height: 50,
          width: 50,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Color('0xFFFCB117'),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: 'About Us'),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Commited to excel in Oral health care for',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
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
                          'https://www.sleepfoundation.org/wp-content/uploads/2021/06/Do-Blind-People-Dream.jpg',
                      oral: 'Blind'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BlindPage()));
                  },
                ),
                Orals(
                    image:
                        'https://www.asmag.com/upload/pic/case/51813.1003626.jpg',
                    oral: 'Deaf'),
                Orals(
                  image:
                      'https://thumbs.dreamstime.com/b/spacial-classroom-disabled-kids-autism-child-learning-painting-paper-teacher-helping-224501419.jpg',
                  oral: 'Autistic',
                ),
                Orals(
                  image:
                      'https://media.istockphoto.com/photos/portrait-of-girl-smiling-picture-id470010079?k=20&m=470010079&s=612x612&w=0&h=hfsMps-L8U2Vm9QYe5Z4kh_vn5bduDc7zyAQOxa9KWk=',
                  oral: 'Mentally Retard',
                ),
                Orals(
                  image:
                      'https://media.istockphoto.com/photos/portrait-of-a-smiling-girl-playing-picture-id156840685?k=20&m=156840685&s=612x612&w=0&h=ULVouxlPI2Is76pU3wyeAUoWe699gmhGN7rImbkYDyk=',
                  oral: 'Down Syndrome',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
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
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Image(
                image: NetworkImage(image!),
                fit: BoxFit.cover,
              )),
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
