import 'package:flutter/material.dart';
import 'package:json_app2/utils/json_helper.dart';

import '../model/comment_model.dart';
import '../model/photos_model.dart';
import '../model/post_model.dart';
import '../model/users_model.dart';
class HomeProvider with ChangeNotifier
{
  List<PostModel> postList = [];
  List<CommentsModel> commentsList = [];
  List albumList = [];
  List<PhotosModel> photosList = [];
  List todosList = [];
  List<UsersModel> usersList = [];


  void getJson()
  async
  {
    // JsonHelper jsonHelper = JsonHelper();
    postList = await JsonHelper.helper.postJson();
    commentsList = await JsonHelper.helper.commentsJson();
   // albumList = await jsonHelper.albumJson();
    photosList = await JsonHelper.helper.photosJson();
   // todosList = await jsonHelper.todosJson();
   usersList = await JsonHelper.helper.usersJson();
   notifyListeners();
   print(postList);
  }
}