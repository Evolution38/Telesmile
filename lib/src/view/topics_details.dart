// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:telesmile/src/constants/loggers.dart';
import 'package:telesmile/src/models/topic_details_model.dart';
import 'package:telesmile/src/services/http_services.dart';
import 'package:telesmile/src/view/video.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

import 'audio/audio.dart';
import 'image.dart';

class TopicDetails extends StatefulWidget {
  final String topicid;
  TopicDetails({required this.topicid});

  @override
  State<TopicDetails> createState() => _TopicDetailsState();
}

class _TopicDetailsState extends State<TopicDetails> {
  List images = [];
  var topicDetails;
  bool isLoading = true;
  topicdetails(String id) async {
    var result = await getTopicDetailsModel(id: id);
    setState(() {
      topicDetails = TopicDetailsModel.fromJson(result);
      isLoading = false;
      logger.d('[TopicsDetails] data: ' + topicDetails.resultArray[0].title);
    });
  }

  @override
  void initState() {
    topicdetails(widget.topicid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> screenDisplay;
    return isLoading
        ? Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : Scaffold(
            appBar: AppBar(
              title: AppText(heading: topicDetails.resultArray[0].title),
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
                    English(text: topicDetails.resultArray[0].shortDesc),
                    Arabic(
                      arabic: topicDetails.resultArray[0].shortArabDesc,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 3, color: const Color(0xFFFCB117)),
                      ),
                      child: English(
                        text: topicDetails.resultArray[0].description,
                      ),
                      width: 350,
                    ),
                    const SizedBox(height: 25),
                    PrimaryText(
                      topic: 'View Images',
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        if (images.isEmpty || images.isNotEmpty) {
                          images.clear();
                          for (var i = 0;
                              i < topicDetails.resultArray[0].imageArray.length;
                              i++) {
                            images.add(topicDetails
                                .resultArray[0].imageArray[i].imagePath);
                          }
                        }
                        logger.d(
                            '[TopicDetails] Images data: ' + images.toString());
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ImagePage(topicimages: images),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 3, color: const Color(0xFFFCB117)),
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
                    PrimaryText(
                      topic: 'Watch Video',
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        screenDisplay = SystemChrome.setEnabledSystemUIMode(
                            SystemUiMode.manual,
                            overlays: [SystemUiOverlay.bottom]);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPage(videolink: topicDetails.resultArray[0].videoLink),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 3, color: const Color(0xFFFCB117)),
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
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AudioPage(audiolink: topicDetails.resultArray[0].audioLink),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 3, color: const Color(0xFFFCB117)),
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
