import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:telesmile/audio_player_buttons.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  AudioPlayer? _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _audioPlayer!
        .setAudioSource(ConcatenatingAudioSource(children: [
      AudioSource.uri(Uri.parse(
          'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3'))
    ]))
        .catchError((error) {
      print("An error occured $error");
    });
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
          PlayerButtons(_audioPlayer)
        ],
      ),
    );
  }
}


//**Nothing */
// import 'package:flutter/material.dart';

// class AudioPage extends StatefulWidget {
//   AudioPage({Key? key}) : super(key: key);

//   @override
//   _AudioPageState createState() => _AudioPageState();
// }

// class _AudioPageState extends State<AudioPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('Audio Page'),),
//     );
//   }
// }
