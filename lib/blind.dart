import 'package:flutter/material.dart';
import 'package:telesmile/appbar.dart';
import 'package:telesmile/blind1_page.dart';
import 'package:telesmile/blind_page.dart';
import 'package:telesmile/drawer.dart';

class Blind extends StatelessWidget {
  const Blind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              SizedBox(height: 20),
              const Text(
                'Oral for Blind',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Cras pulvinar pellentesque in',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                '.لكل نع مغرلاب ةنيدم يسرك ,دقو نويدلاو ريوطت مت فلاو الا لك .ندم يف ملاعلا ةيملاع ,مت يفو راصتقاو طيحملا',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 35),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3, color: const Color(0xFFFCB117))),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const BlindPage()));
                  },
                  leading: Image.asset(
                    'assets/blind men.png',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox( height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3, color: const Color(0xFFFCB117))),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const Blind1Page()));
                  },
                  leading: Image.asset(
                    'assets/blind men.png',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 3, color: const Color(0xFFFCB117))),
                child: ListTile(
                  leading: Image.asset(
                    'assets/blind men.png',
                    fit: BoxFit.fill,
                  ),
                  title: const Text(
                    'Title',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ), 
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: const Color(0xFFFCB117),
      //   selectedItemColor: Colors.black,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.people), label: 'About Us'),
      //     BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact'),
      //   ],
      // ),
    );
  }
}
