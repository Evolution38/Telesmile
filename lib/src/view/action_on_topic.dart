// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telesmile/src/view/video.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

import 'audio/audio.dart';
import 'image.dart';

class ActionsonTopic extends StatelessWidget {
  const ActionsonTopic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> screenDisplay;
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   'Oral for Blind',
        //   style: TextStyle(
        //     fontSize: 25,
        //     color: Colors.black,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        title: AppText(heading: 'Oral for Blind'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              English(text:'Lorem ipsum dolor sit amet, consectetur'),
              Arabic(arabic:'نع مغرلاب ةنيدم يسرك ,دقو نويدلاو ريوطت مت' ,),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 3, color: const Color(0xFFFCB117)),
                ),
                child:  
                English(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue faucibus non facilisi et ultrices cras habitasse. Volutpat amet leo in mus mi metus.',),
                width: 350,
              ),
              const SizedBox(height: 25),
              PrimaryText(topic: 'View Images',),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ImagePage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 3, color: const Color(0xFFFCB117)),
                    image: const DecorationImage(
                      image: AssetImage('assets/blind men.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.width * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.open_in_full_rounded,
                      color: Color(0xFFFCB117),
                      size: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              PrimaryText(topic: 'Watch Video',),
              // const Text(
              //   'Watch Video',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  screenDisplay = SystemChrome.setEnabledSystemUIMode(
                      SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VideoPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 3, color: const Color(0xFFFCB117)),
                    image: const DecorationImage(
                      image: AssetImage('assets/blind men.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.width * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle,
                      color: Color(0xFFFCB117),
                      size: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              PrimaryText(topic: 'Listen Audio'),
              // const Text(
              //   'Listen Audio',
              //   style: TextStyle(
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Audio(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:
                        Border.all(width: 3, color: const Color(0xFFFCB117)),
                    image: const DecorationImage(
                      image: AssetImage('assets/blind men.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  height: MediaQuery.of(context).size.width * 0.45,
                  width: MediaQuery.of(context).size.width,
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.audiotrack,
                      color: Color(0xFFFCB117),
                      size: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
