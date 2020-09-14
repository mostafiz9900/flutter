class MyModel {

  int id;
  String name;
  String title;
  String body;

  MyModel({ this.id, this.name,this.title,this.body });

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
      this.title = json['title'];
      this.body = json['body'];
  }

  Map<String, dynamic> toJson() => {'id':id, 'name':name,'title':title,'body':body };
}