class Post {

  int id;
  String title;
  String body;


  Post({this.id, this.title, this.body});

  Post.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.title = json['title'];
      this.body = json['body'];
  }

  Map<String, dynamic> toJson() => {'id':id, 'title':title,'body':body };
}