import 'dart:convert';

import 'package:flutter/services.dart';

class JsonHelper {
  Future<List> postJson() async {
    var jsonString = await rootBundle.loadString("assets/json/post.json");
    List json = jsonDecode(jsonString);
    return json;
    print(json);
  }

  Future<List> commentJson() async {
    var jsonString = await rootBundle.loadString("assets/json/comments.json");
    List json = jsonDecode(jsonString);
    return json;
  }
}
