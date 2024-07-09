import 'package:flutter/material.dart';
import 'package:json_app2/utils/json_helper.dart';
class HomeProvider with ChangeNotifier
{
  List postList = [];
  List commentList = [];
  void getJson()
  async
  {
    JsonHelper jsonHelper = JsonHelper();
   postList =await  jsonHelper.postJson();
   commentList = await jsonHelper.commentJson();
   notifyListeners();
   print(postList);
  }
}