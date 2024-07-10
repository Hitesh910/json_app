import 'dart:convert';

import 'package:flutter/services.dart';

import '../screen/home/model/post_model.dart';

class JsonHelper {
  Future<List> postJson() async {
    var jsonString = await rootBundle.loadString("assets/json/post.json");
    List json = jsonDecode(jsonString);
    // List<PostModel> postList = json.map((e) => PostModel.mapToModel);
    return json;
  }

  Future<List> commentJson() async {
    var jsonString = await rootBundle.loadString("assets/json/comments.json");
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> albumJson() async {
    var jsonString = await rootBundle.loadString("assets/json/album.json");
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> photosJson() async {
    var jsonString = await rootBundle.loadString("assets/json/photos.json");
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> todosJson() async {
    var jsonString = await rootBundle.loadString("assets/json/todos.json");
    List json = jsonDecode(jsonString);
    return json;
  }

  Future<List> usersJson() async {
    var jsonString = await rootBundle.loadString("assets/json/users.json");
    List json = jsonDecode(jsonString);
    return json;
  }
}
