import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  static Future getCategoryModel() async {
    var response = await http.get(
        Uri.parse('http://studyleagueit.com/telesmile/app_apis/category.php'));
    var jsonData = jsonDecode(response.body);
    return jsonData;
  }
}
