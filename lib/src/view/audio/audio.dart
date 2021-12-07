import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'audio_player_buttons.dart';

class AudioPage extends StatefulWidget {
  String audiolink;
  AudioPage({required this.audiolink});

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
          widget.audiolink))
    ]))
        .catchError((error) {
      print("[Audio] data An error occured $error");
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
          PlayerButtons(_audioPlayer!)
        ],
      ),
    );
  }
}

// //**Nothing */
// // import 'package:flutter/material.dart';

// // class AudioPage extends StatefulWidget {
// //   AudioPage({Key? key}) : super(key: key);

// //   @override
// //   _AudioPageState createState() => _AudioPageState();
// // }

// // class _AudioPageState extends State<AudioPage> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(child: Text('Audio Page'),),
// //     );
// //   }
// // }

// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:flutter/material.dart';

// import 'audio_player_buttons.dart';

// class Audio extends StatefulWidget {
//   const Audio({Key? key}) : super(key: key);

//   @override
//   _AudioState createState() => _AudioState();
// }

// class _AudioState extends State<Audio> {
//   late final AudioManager _audioManager;

//   @override
//   void initState() {
//     super.initState();
//     _audioManager = AudioManager();
//   }

//   @override
//   void dispose() {
//     _audioManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const Image(
//             image: AssetImage(
//               'assets/audio-file.jpg',
//             ),
//           ),
//           // const Spacer(),
//           ValueListenableBuilder<ProgressBarState>(
//             valueListenable: _audioManager.progressNotifier,
//             builder: (_, value, __) {
//               return Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: ProgressBar(
//                   progress: value.current,
//                   buffered: value.buffered,
//                   total: value.total,
//                   onSeek: _audioManager.seek,
//                 ),
//               );
//             },
//           ),
//           ValueListenableBuilder<ButtonState>(
//             valueListenable: _audioManager.buttonNotifier,
//             builder: (_, value, __) {
//               switch (value) {
//                 case ButtonState.loading:
//                   return Container(
//                     margin: const EdgeInsets.all(8.0),
//                     width: 32.0,
//                     height: 32.0,
//                     child: const CircularProgressIndicator(),
//                   );
//                 case ButtonState.paused:
//                   return IconButton(
//                     icon: const Icon(Icons.play_arrow),
//                     iconSize: 32.0,
//                     onPressed: _audioManager.play,
//                   );
//                 case ButtonState.playing:
//                   return IconButton(
//                     icon: const Icon(Icons.pause),
//                     iconSize: 32.0,
//                     onPressed: _audioManager.pause,
//                   );
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
