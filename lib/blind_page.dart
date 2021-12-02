// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:telesmile/appbar.dart';
import 'package:telesmile/audio.dart';
import 'package:telesmile/blind.dart';
import 'package:telesmile/image.dart';
import 'package:telesmile/video.dart';

class BlindPage extends StatelessWidget {
  const BlindPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (_) => const Blind()), (route) => false);
                }, 
                icon: const Icon(Icons.arrow_back)),
                const Padding(
                  padding: EdgeInsets.only(left: 60),
                  child: Text('Oral for Blind',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ],
            ),
            const SizedBox(height: 25),
            const Text('Lorem ipsum dolor sit amet, consectetur',
            style: TextStyle(fontSize: 18),),
            const SizedBox(height: 10,),
            const Text('نع مغرلاب ةنيدم يسرك ,دقو نويدلاو ريوطت مت',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3, color: const Color(0xFFFCB117)),
               ),
              child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue faucibus non facilisi et ultrices cras habitasse. Volutpat amet leo in mus mi metus.',
              style: TextStyle(
                fontSize: 18,
              ),),
              width: 350,
            ),
            const SizedBox(height: 25),
            const Text('View Images',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height:10),
            Stack(
              children: [
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3, color: const Color(0xFFFCB117)),
                  image: const DecorationImage(
                    image:NetworkImage('https://image.freepik.com/free-photo/blind-man-people-with-disability-handicapped-person-everyday-life-visually-impaired-man-with-walking-stick-descending-steps-city-park_1157-40250.jpg'),
                    fit: BoxFit.fill,),
                ),
                height: 150,
                width: 350,
              ),
              Positioned(
                top: 40,
                left: 150,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  const ImagePage()));
                  }, 
                  icon: const Icon(Icons.open_in_full_rounded, 
                  color: Color(0xFFFCB117),
                  size: 50,
                  )),
              ),
              ]
            ),
            const SizedBox(height: 25),
            const Text('Watch Video',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height:10),
            Stack(
              children: [
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3, color: const Color(0xFFFCB117)),
                  image: const DecorationImage(
                    image:NetworkImage('https://image.freepik.com/free-photo/blind-man-people-with-disability-handicapped-person-everyday-life-visually-impaired-man-with-walking-stick-descending-steps-city-park_1157-40250.jpg'),
                    fit: BoxFit.fill,),
                ),
                height: 150,
                width: 350,
              ),
              Positioned(
                top: 40,
                left: 150,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  const VideoPage()));
                  }, 
                  icon: const Icon(Icons.play_circle,
                  color: Color(0xFFFCB117),
                  size: 50,
                  ),),
              ),
              ]
            ),
            const SizedBox(height: 25),
            const Text('Listen Audio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height:10),
            Stack(
              children:[ Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3, color: const Color(0xFFFCB117)),
                  image: const DecorationImage(
                    image:NetworkImage('https://image.freepik.com/free-photo/blind-man-people-with-disability-handicapped-person-everyday-life-visually-impaired-man-with-walking-stick-descending-steps-city-park_1157-40250.jpg'),
                    fit: BoxFit.fill,
                  )
                ),
                height: 150,
                width: 350,
              ),
              Positioned(
                top: 40,
                left: 150,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const AudioPage()));
                  }, 
                  icon: const Icon(Icons.audiotrack,
                  color: Color(0xFFFCB117),
                  size: 50,
                  ),),
              ),
              ]
            ),
            const SizedBox(height: 25),
          ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFCB117),
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
        ],
      ),
    );
  }
}