class User {
  int userId;
  int id;
  String title;
  String body;

//  User();

  User({this.userId, this.id, this.title, this.body});

 User.fromJson(Map<String,dynamic>json):
 userId=json['userId'],
 id=json["id"],
 title=json["title"],
 body=json["body"];
}
