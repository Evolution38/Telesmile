// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BlindPage extends StatelessWidget {
  const BlindPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                const Icon(Icons.arrow_back),
                const Padding(
                  padding: EdgeInsets.only(left: 90),
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
                border: Border.all(width: 4, color: const Color(0xFFFCB117)),
               ),
              child: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue faucibus non facilisi et ultrices cras habitasse. Volutpat amet leo in mus mi metus.',
              style: TextStyle(
                fontSize: 18,
              ),),
            ),
            const SizedBox(height: 25),
            const Text('View Images',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 4, color: const Color(0xFFFCB117)),
              ),
              height: 100,
            ),
            const SizedBox(height: 25),
            const Text('Watch Video',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 4, color: const Color(0xFFFCB117)),
              ),
              height: 100,
            ),
            const SizedBox(height: 25),
            const Text('Listen Audio',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 4, color: const Color(0xFFFCB117)),
              ),
              height: 100,
            ),
            const SizedBox(height: 25),
          ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFFCB117),
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
        ],
      ),
    );
  }
}