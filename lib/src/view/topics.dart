// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:telesmile/src/constants/loggers.dart';
import 'package:telesmile/src/models/topic_model.dart';
import 'package:telesmile/src/services/http_services.dart';
import 'package:telesmile/src/view/widgets/appbar.dart';
import 'package:telesmile/src/view/widgets/texts.dart';

import 'topics_details.dart';
import 'drawerpage/drawer.dart';

@immutable
class Topics extends StatefulWidget {
  final String categoryid;
  const Topics({required this.categoryid});
  // const Topics({Key? key}) : super(key: key);

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  var topics;
  bool isLoading = true;
  loadTopics(String id) async {
    var result = await getTopicsModel(id: id);
    setState(() {
      topics = TopicsModel.fromJson(result!);
      isLoading = false;
      logger.d('[Topics] data: ' + topics.resultArray[0].catSubTitle);
    });
  }

  @override
  void initState() {
    loadTopics(widget.categoryid);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: const MyDrawer(),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      heading: topics.resultArray[0].catTitle +
                          " " +
                          topics.resultArray[0].catSubTitle,
                    ),
                    const SizedBox(height: 20),
                    LocalText(
                      topic: topics.resultArray[0].catDesc,
                    ),
                    const SizedBox(height: 20),
                    Arabic(
                      arabic: topics.resultArray![0].catArabDesc,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: topics.resultArray[0].topic.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => TopicDetails(topicid: topics.resultArray[0].topic[index].topicId)));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  width: 3,
                                  color: const Color(0xFFFCB117),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.width *
                                        0.35,
                                    child: Image.asset(
                                      'assets/blind men.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(width: 25),
                                  Expanded(
                                    child: Text(
                                      topics
                                          .resultArray![0].topic![index].title,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),
    );
  }
}
