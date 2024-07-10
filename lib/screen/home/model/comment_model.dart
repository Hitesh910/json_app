class CommentsModel
{
  int? postId,id;
  String? name,email,body;

  CommentsModel({this.postId, this.id, this.name, this.body,this.email});

  factory CommentsModel.mapToModel(Map m1)
  {
    return CommentsModel(postId: m1['postId'],id: m1['id'],name: m1['name'],email: m1['email'],body: m1['body']);
  }
}