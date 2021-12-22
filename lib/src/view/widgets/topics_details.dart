// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:marquee/marquee.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:telesmile/src/constants/loggers.dart';
import 'package:telesmile/src/models/topic_details_model.dart';
import 'package:telesmile/src/services/http_services.dart';
import 'package:telesmile/src/view/widgets/widgets.dart';

import '../audio/audio.dart';
import 'image.dart';

class TopicDetails extends StatefulWidget {
  final String topicid;
  TopicDetails({Key? key, required this.topicid}) : super(key: key);

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
            //*!AppBar Having Title
            appBar: AppBar(
              title: SizedBox(
                height: 50,
                child: Marquee(
                  text: topicDetails.resultArray[0].title,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  blankSpace: 50,
                  velocity: 50.0,
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              iconTheme: const IconThemeData(color: Colors.black),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                // padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    //*! Short English Discription
                    English(text: topicDetails.resultArray[0].shortDesc),
                    SizedBox(height: 30),
                    //*! Short Arabic Discription
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
                      child: Column(
                        children: [
                          //*! Long English Discription
                          Html(data: topicDetails.resultArray[0].description),
                          SizedBox(height: 20),
                          //*! Long English Discription*//
                          Html(data: topicDetails.resultArray[0].descriptionAr)
                        ],
                      ),
                      width: MediaQuery.of(context).size.width,
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
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                topicDetails.resultArray[0].titleImage),
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
                        setState(() {});
                        pushNewScreen(context,
                            screen: VideoPlayerScreen(
                                videolink:
                                    topicDetails.resultArray[0].videoLink),
                            withNavBar: false);
                        // screenDisplay = SystemChrome.setEnabledSystemUIMode(
                        //     SystemUiMode.manual,
                        //     overlays: [SystemUiOverlay.bottom,SystemUiOverlay.top]);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => VideoPlayerScreen(videolink: topicDetails.resultArray[0].videoLink,),
                        //   ),
                        // );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 3, color: const Color(0xFFFCB117)),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(topicDetails.resultArray[0].titleImage),
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
                            builder: (context) => AudioPage(
                              audiolink: topicDetails.resultArray[0].audioLink,
                            ),
                          ),
                        );
                        logger.d("[Topic Details] audiolink data: " +
                            topicDetails.resultArray[0].audioLink);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              width: 3, color: const Color(0xFFFCB117)),
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(topicDetails.resultArray[0].titleImage),
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
