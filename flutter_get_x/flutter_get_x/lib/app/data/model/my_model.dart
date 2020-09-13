class MyModel {

  int id;
  String name;

  MyModel({ this.id, this.name });

  MyModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
  }

  Map<String, dynamic> toJson() => {'id':id, 'name':name };
}