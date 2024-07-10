class PhotosModel
{
  int? albumId,id;
  String? title,url,thumbnaiUrl;

  PhotosModel({this.albumId, this.id, this.title, this.url, this.thumbnaiUrl});

  factory PhotosModel.mapToModel(Map m1)
  {
    return PhotosModel(albumId: m1['albumId'],id: m1['id'],title: m1['title'],url: m1['url'],thumbnaiUrl: m1['thumbnailUrl']);
  }
}