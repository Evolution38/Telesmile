// ignore_for_file: prefer_const_constructors, deprecated_member_use

/*
 * File: player_buttons.dart
 * Project: Flutter music player
 * Created Date: Thursday February 18th 2021
 * Author: Michele Volpato
 * -----
 * Copyright (c) 2021 Michele Volpato
 */

// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
// import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class PlayerButtons extends StatefulWidget {
  final AudioPlayer _audioPlayer;
  const PlayerButtons(this._audioPlayer, {Key? key}) : super(key: key);

  @override
  State<PlayerButtons> createState() => _PlayerButtonsState();
}

class _PlayerButtonsState extends State<PlayerButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            StreamBuilder<bool>(
              stream: widget._audioPlayer.shuffleModeEnabledStream,
              builder: (context, snapshot) {
                return _shuffleButton(context, snapshot.data ?? false);
              },
            ),
            StreamBuilder(
              stream: widget._audioPlayer.sequenceStateStream,
              builder: (_, __) {
                return _previousButton();
              },
            ),
            StreamBuilder<PlayerState?>(
              stream: widget._audioPlayer.playerStateStream,
              builder: (_, snapshot) {
                final playerState = snapshot.data!;
                return _playPauseButton(playerState);
              },
            ),
            StreamBuilder(
              stream: widget._audioPlayer.sequenceStateStream,
              builder: (_, __) {
                return _nextButton();
              },
            ),
            StreamBuilder<LoopMode>(
              stream: widget._audioPlayer.loopModeStream,
              builder: (context, snapshot) {
                return _repeatButton(context, snapshot.data ?? LoopMode.off);
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _playPauseButton(PlayerState playerState) {
    final processingState = playerState.processingState;
    if (processingState == ProcessingState.loading ||
        processingState == ProcessingState.buffering) {
      return Container(
        margin: EdgeInsets.all(8.0),
        width: 64.0,
        height: 64.0,
        child: CircularProgressIndicator(),
      );
    } else if (widget._audioPlayer.playing != true) {
      return IconButton(
        icon: Icon(Icons.play_arrow),
        iconSize: 64.0,
        onPressed: widget._audioPlayer.play,
      );
    } else if (processingState != ProcessingState.completed) {
      return IconButton(
        icon: Icon(Icons.pause),
        iconSize: 64.0,
        onPressed: widget._audioPlayer.pause,
      );
    } else {
      return IconButton(
        icon: Icon(Icons.replay),
        iconSize: 64.0,
        onPressed: () => widget._audioPlayer.seek(Duration.zero,
            index: widget._audioPlayer.effectiveIndices!.first),
      );
    }
  }

  Widget _shuffleButton(BuildContext context, bool isEnabled) {
    return IconButton(
      icon: isEnabled
          ? Icon(Icons.shuffle, color: Theme.of(context).accentColor)
          : Icon(Icons.shuffle),
      onPressed: () async {
        final enable = !isEnabled;
        if (enable) {
          await widget._audioPlayer.shuffle();
        }
        await widget._audioPlayer.setShuffleModeEnabled(enable);
      },
    );
  }

  Widget _previousButton() {
    return IconButton(
      icon: Icon(Icons.skip_previous),
      onPressed: widget._audioPlayer.hasPrevious
          ? widget._audioPlayer.seekToPrevious
          : null,
    );
  }

  Widget _nextButton() {
    return IconButton(
      icon: Icon(Icons.skip_next),
      onPressed:
          widget._audioPlayer.hasNext ? widget._audioPlayer.seekToNext : null,
    );
  }

  Widget _repeatButton(BuildContext context, LoopMode loopMode) {
    final icons = [
      Icon(Icons.repeat),
      Icon(Icons.repeat, color: Theme.of(context).accentColor),
      Icon(Icons.repeat_one, color: Theme.of(context).accentColor),
    ];
    const cycleModes = [
      LoopMode.off,
      LoopMode.all,
      LoopMode.one,
    ];
    final index = cycleModes.indexOf(loopMode);
    return IconButton(
      icon: icons[index],
      onPressed: () {
        widget._audioPlayer.setLoopMode(
            cycleModes[(cycleModes.indexOf(loopMode) + 1) % cycleModes.length]);
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';

// class AudioManager {
//   final progressNotifier = ValueNotifier<ProgressBarState>(
//     ProgressBarState(
//       current: Duration.zero,
//       buffered: Duration.zero,
//       total: Duration.zero,
//     ),
//   );
//   final buttonNotifier = ValueNotifier<ButtonState>(ButtonState.paused);

//   static const url =
//       'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3';

//   late AudioPlayer _audioPlayer;
//   AudioManager() {
//     _init();
//   }

//   void _init() async {
//     _audioPlayer = AudioPlayer();
//     await _audioPlayer.setUrl(url);

//     _audioPlayer.playerStateStream.listen((playerState) {
//       final isPlaying = playerState.playing;
//       final processingState = playerState.processingState;
//       if (processingState == ProcessingState.loading ||
//           processingState == ProcessingState.buffering) {
//         buttonNotifier.value = ButtonState.loading;
//       } else if (!isPlaying) {
//         buttonNotifier.value = ButtonState.paused;
//       } else if (processingState != ProcessingState.completed) {
//         buttonNotifier.value = ButtonState.playing;
//       } else {
//         _audioPlayer.seek(Duration.zero);
//         _audioPlayer.pause();
//       }
//     });

//     _audioPlayer.positionStream.listen((position) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: position,
//         buffered: oldState.buffered,
//         total: oldState.total,
//       );
//     });

//     _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: oldState.current,
//         buffered: bufferedPosition,
//         total: oldState.total,
//       );
//     });

//     _audioPlayer.durationStream.listen((totalDuration) {
//       final oldState = progressNotifier.value;
//       progressNotifier.value = ProgressBarState(
//         current: oldState.current,
//         buffered: oldState.buffered,
//         total: totalDuration ?? Duration.zero,
//       );
//     });
//   }

//   void play() {
//     _audioPlayer.play();
//   }

//   void pause() {
//     _audioPlayer.pause();
//   }

//   void seek(Duration position) {
//     _audioPlayer.seek(position);
//   }

//   void dispose() {
//     _audioPlayer.dispose();
//   }
// }

// class ProgressBarState {
//   ProgressBarState({
//     required this.current,
//     required this.buffered,
//     required this.total,
//   });
//   final Duration current;
//   final Duration buffered;
//   final Duration total;
// }

// enum ButtonState { paused, playing, loading }
// 'https://www.learningcontainer.com/wp-content/uploads/2020/02/Kalimba.mp3';