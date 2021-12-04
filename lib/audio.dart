<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:telesmile/audio_player_buttons.dart';
=======
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
>>>>>>> Stashed changes

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
<<<<<<< Updated upstream
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
=======
    // String url =
    //     'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3';
    // late AudioPlayer _audioPlayer;
>>>>>>> Stashed changes

    // @override
    // void initState() async {
    //   super.initState();
    //   _audioPlayer = AudioPlayer();
    //   await _audioPlayer.setUrl(url);
    // }
    

    // void Play() {
    //   _audioPlayer.play();
    // }

    // void Pause() {
    //   _audioPlayer.pause();
    // }
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
=======

    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Spacer(),
            // ProgressBar(
            //   progress: Duration.zero, 
            //   total: Duration.zero),
            //   ValueListenableBuilder(
            //     valueListenable: ,
            //      builder: (_, value, __){
            //        switch(value){
            //          case ButtonState.loading:
            //          return Container(
            //            margin: const EdgeInsets.all(8.0),
            //           width: 32.0,
            //           height: 32.0,
            //           child: const CircularProgressIndicator(),
            //          );
            //        }
            //      })
          ],
        ),),
>>>>>>> Stashed changes
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
