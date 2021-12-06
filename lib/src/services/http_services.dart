import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  static Future getCategoryModel() async {
    var response = await http.get(
        Uri.parse('http://studyleagueit.com/telesmile/app_apis/category.php'));
    var jsonData = json.decode(response.body);
    return jsonData;
  }
}
  Future getTopicsModel({required String id}) async {
    var url =
        "http://studyleagueit.com/telesmile/app_apis/topics.php?cat_id= $id";
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);
    return jsonData;
  }
