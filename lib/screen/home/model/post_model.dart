class PostModel
{
  int? userId,id;
  String? title,body;

  PostModel({this.userId, this.id, this.title, this.body});

  factory PostModel.mapToModel(Map m1)
  {
    return PostModel(userId: m1['userId'],id: m1['id'],title: m1['title'],body: m1['body']);
  }
}