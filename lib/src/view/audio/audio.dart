//ignore_for_file: must_be_immutable, avoid_print;

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';

import 'package:rxdart/rxdart.dart';
import 'package:telesmile/src/view/audio/common.dart';
import 'package:telesmile/src/view/widgets/widgets.dart';

import 'audio_player_buttons.dart';

class AudioPage extends StatefulWidget   {
  String? audiolink;

  AudioPage({Key? key, this.audiolink}) : super(key: key);

  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> with WidgetsBindingObserver {
  AudioPlayer? _audioPlayer;
  // late Stream<DurationState> _durationState;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    _audioPlayer = AudioPlayer();
    // _durationState = Rx.combineLatest2<Duration, PlaybackEvent, DurationState>(
    //     _audioPlayer!.positionStream,
    //     _audioPlayer!.playbackEventStream,
    //     (position, playbackEvent) => DurationState(
    //           progress: position,
    //           buffered: playbackEvent.bufferedPosition,
    //           total: playbackEvent.duration,
    //         ));
    // _audioPlayer!.setAudioSource(
    //   ConcatenatingAudioSource(children: [
    //     AudioSource.uri(
    //       Uri.parse(widget
    //           .audiolink! /*'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'*/),
    //     )
    //   ]),
    // );
     _init();
  }

   Future<void> _init() async {
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.speech());
    // Listen to errors during playback.
    _audioPlayer!.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    // Try to load audio from a source and catch any errors.
    try {
      await _audioPlayer!.setAudioSource(AudioSource.uri(Uri.parse(
          "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3")));
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }


  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);

    _audioPlayer!.dispose();
    super.dispose();
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Release the player's resources when not in use. We use "stop" so that
      // if the app resumes later, it will still remember what position to
      // resume from.
      _audioPlayer!.stop();
    }
  }

   Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer!.positionStream,
          _audioPlayer!.bufferedPositionStream,
          _audioPlayer!.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header('Audio'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Image(
            image: AssetImage(
              'assets/Group 21.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:IconButton(
          icon: Icon(Icons.volume_up),
          onPressed: () {
            showSliderDialog(
              context: context,
              title: "Adjust volume",
              divisions: 10,
              min: 0.0,
              max: 1.0,
              value: _audioPlayer!.volume,
              stream: _audioPlayer!.volumeStream,
              onChanged: _audioPlayer!.setVolume,
            );
          },
        ),
          ),
          // PlayerButtons(_audioPlayer!)
        ],
      ),
    );
  }

  // StreamBuilder<DurationState> _progressBar() {
  //   return StreamBuilder<DurationState>(
  //     stream: _durationState,
  //     builder: (context, snapshot) {
  //       final durationState = snapshot.data;
  //       final progress = durationState?.progress ?? Duration.zero;
  //       final buffered = durationState?.buffered ?? Duration.zero;
  //       final total = durationState?.total ?? Duration.zero;
  //       return ProgressBar(
  //         progress: progress,
  //         buffered: buffered,
  //         total: total,
  //         onSeek: (duration) {
  //           _audioPlayer!.seek(duration);
  //         },
  //         onDragUpdate: (details) {
  //           debugPrint('${details.timeStamp}, ${details.localPosition}');
  //         },
  //       );
  //     },
  //   );
  // }
}

// class DurationState {
//   const DurationState({
//     required this.progress,
//     required this.buffered,
//     this.total,
//   });
//   final Duration progress;
//   final Duration buffered;
//   final Duration? total;
// }
