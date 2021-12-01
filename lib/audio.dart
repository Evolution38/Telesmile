// ignore_for_file: prefer_const_constructors, avoid_print, unused_element

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  late AudioPlayer _audioPlayer;
  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer
        .setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(Uri.parse(
          'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3')),
    ]))
        .catchError((error) {
      print("An error occured ");
    });
    @override
    void dispose() {
      _audioPlayer.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('AudioPage'),
      centerTitle: true,
    ));
  }
}
