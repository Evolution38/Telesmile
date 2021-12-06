// ignore_for_file: prefer_const_constructors

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
// import 'dart:ffi';
import 'package:flutter/services.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  final double _aspectRatio = 16 / 9;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
        'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4');
    _chewieController = ChewieController(
      allowedScreenSleep: false,
      // looping: true,
      allowFullScreen: true,
      deviceOrientationsAfterFullScreen: [
        DeviceOrientation.landscapeRight,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
      videoPlayerController: _videoPlayerController!,
      aspectRatio: _aspectRatio,
      autoInitialize: true,
      autoPlay: true,
      showControls: true,
    );
    _chewieController!.addListener(() {
      if (_chewieController!.isFullScreen) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.landscapeRight,
          DeviceOrientation.landscapeLeft,
        ]);
      } else {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }
    });
    // ..initialize().then((_) {
    //   setState(() {});
    //   _videoPlayerController!.play();
    //   _videoPlayerController!.setLooping(true);
    // });
  }
  @override
  void dispose() {
    _videoPlayerController!.dispose();
    _chewieController!.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController!,
    );
    // return Stack(children: [
    //   _videoPlayerController!.value.isInitialized
    //       ? AspectRatio(
    //           aspectRatio: _videoPlayerController!.value.aspectRatio,
    //           child: VideoPlayer(_videoPlayerController!),
    //         )
    //       : Container(),
    // Align(
    //   alignment: Alignment.center,
    //   child: ElevatedButton(
    //     style: ButtonStyle(
    //       backgroundColor: MaterialStateProperty.all(Colors.transparent),
    //     ),
    //     onPressed: () {
    //       setState(() {
    //         _videoPlayerController!.value.isPlaying
    //             ? _videoPlayerController!.pause()
    //             : _videoPlayerController!.play();
    //       });
    //     },
    //     child: Icon(
    //       _videoPlayerController!.value.isPlaying
    //           ? Icons.pause
    //           : Icons.play_arrow,
    //     ),
    //   ),
    // ),
    // ]);
  }
}
