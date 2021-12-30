import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  static Future getCategoryModel() async {
    var response = await http
        .get(Uri.parse('http://telesmile.co.in/app_apis/category.php'));
    var jsonData = json.decode(response.body);
    return jsonData;
  }

  static Future getGalleryModel() async {
    var response = await http
        .get(Uri.parse("http://telesmile.co.in/app_apis/gallery.php"));
    var jsonData = json.decode(response.body);
    return jsonData;
  }
}

Future getTopicsModel({required String id}) async {
  var url = "http://telesmile.co.in/app_apis/topics.php?cat_id= $id";
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  return jsonData;
}

Future getTopicDetailsModel({required String id}) async {
  var url = "http://telesmile.co.in/app_apis/topic_details.php?topic_id= $id";
  var response = await http.get(Uri.parse(url));
  var jsonData = json.decode(response.body);
  return jsonData;
}
