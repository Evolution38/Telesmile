// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, avoid_unnecessary_containers, non_constant_identifier_names, prefer_typing_uninitialized_variables

// import 'package:cached_network_image/cached_network_image.dart';
import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:telesmile/src/constants/loggers.dart';
import 'package:telesmile/src/models/get_category_model.dart';
import 'package:telesmile/src/services/http_services.dart';
import 'package:telesmile/src/view/audio/audio.dart';

import 'package:telesmile/src/view/contactus.dart';
import 'package:telesmile/src/view/drawerpage/drawer.dart';
import 'package:telesmile/src/view/topics.dart';
import 'package:telesmile/src/view/widgets/appbar.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

import 'src/models/topic_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Duration timeout = Duration(seconds: 10);
  List blindaudios = [];
  bool blind = true;
  var getCategory;
  bool isLoading = true;
  loadCategories() async {
    var result = await HttpService.getCategoryModel();
    setState(() {
      getCategory = GetCategoryModel.fromJson(result);
      isLoading = false;
      logger.d("[HomePage Category] data: " + getCategory.category[1].catTitle);
      logger.d(
          "[HomePage Category] data: " + getCategory.category[1].catSubTitle);
    });
  }

  var topics;
  loadTopics(String id) async {
    var result = await getTopicsModel(id: id);
    setState(() {
      topics = TopicsModel.fromJson(result!);
    });
  }

  Future duration(BuildContext context) async {
    await Future.delayed(
      Duration(seconds: 7),
      () {
        for (var i = 0; i < topics.resultArray[0].topic.length; i++) {
          blindaudios.add(topics.resultArray[0].topic[i].audioLink);
        }
        setState(
          () {
            if (blind == true) {
              logger.d("[HomePage] boolean data: " + blind.toString());
              showDialog(
                context: context,
                builder: (BuildContext context) => AudioPage(
                    audiolink:
                    ['https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3']
                        /*'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3'*/),
              );
            }
          },
        );
      },
    );
  }

  @override
  void initState() {
    loadCategories();
    loadTopics('1');
    duration(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  LocalText(topic: 'Commited to excel in Oral health care for'),
                  PrimaryText(topic: '"Everyone in the society"'),
                  SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: getCategory.category.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              blind = false;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Topics(
                                    categoryid:
                                        getCategory.category[index].catId),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Expanded(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Container(
                                    child: Image(
                                      image: CachedNetworkImageProvider(
                                          getCategory.category[index].catImg),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                getCategory.category[index].catTitle,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                getCategory.category[index].catSubTitle,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFCB117),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactUs()));
                    },
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFCB117),
                        minimumSize: Size(250, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    label: Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
    );
  }
}
