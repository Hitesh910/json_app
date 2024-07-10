import 'package:flutter/material.dart';
import 'package:json_app2/utils/json_helper.dart';

import '../model/post_model.dart';
class HomeProvider with ChangeNotifier
{
  List<PostModel> postList = [];
  List commentList = [];
  List albumList = [];
  List photosList = [];
  List todosList = [];
  List usersList = [];
  void getJson()
  async
  {
    JsonHelper jsonHelper = JsonHelper();
   // postList = await   jsonHelper.postJson();
   commentList = await jsonHelper.commentJson();
   albumList = await jsonHelper.albumJson();
   photosList = await jsonHelper.photosJson();
   todosList = await jsonHelper.todosJson();
   usersList = await jsonHelper.usersJson();
   notifyListeners();
   print(postList);
  }
}