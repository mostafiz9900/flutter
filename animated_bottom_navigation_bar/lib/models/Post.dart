class PostList{
  final List<Post> posts;

  PostList({this.posts});
   factory PostList.fromJson(List<dynamic> parsedJson){
     List<Post> posts=new List<Post>();
     posts=parsedJson.map((i)=>Post.fromJson(i)).toList();
     return new PostList(posts:posts);
   }
}



class Post {
  int id;
  String title;
  String body;

  Post({this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> data){
    return Post(
      id:data["id"],
      title: data["title"],
      body: data["body"]
    );
  }
}