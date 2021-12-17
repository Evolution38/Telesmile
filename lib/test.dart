//ignore_for_file: must_be_immutable, avoid_print;

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'src/view/audio/audio_player_buttons.dart';

class AudioPage2 extends StatefulWidget {
  List audiolink = [];
  AudioPage2({Key? key, required this.audiolink}) : super(key: key);

  @override
  _AudioPage2State createState() => _AudioPage2State();
}

class _AudioPage2State extends State<AudioPage2> {
  AudioPlayer? _audioPlayer;
  final audioSource = ConcatenatingAudioSource(children: []);

  @override
  void initState() {
    super.initState();
    for (var i in widget.audiolink) {
      audioSource.add(AudioSource.uri(Uri.parse(i)));
    }
    _audioPlayer = AudioPlayer();
    _audioPlayer!.
    setAudioSource(ConcatenatingAudioSource(children: [

      // AudioSource.uri(Uri.parse(''))
      // AudioSource.uri(Uri.parse(i))
    ]));
  }

  @override
  void dispose() {
    _audioPlayer!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Image(
            image: AssetImage(
              'assets/audio-file.jpg',
            ),
          ),
          PlayerButtons(_audioPlayer!)
        ],
      ),
    );
  }
}
