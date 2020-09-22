class Student {

  int id;
  String title;
  String body;

  Student({ this.id, this.title,this.body });

  Student.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.title = json['tile'];
      this.body = json['body'];
  }

  Map<String, dynamic> toJson() => {
    'id':id, 'title':title,'body':body
  };
}