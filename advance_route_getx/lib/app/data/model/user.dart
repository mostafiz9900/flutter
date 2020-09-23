class User {

  int id;
  String name;

  User({ this.id=0, this.name='' });

  // final user = User(id:18,name: "Camila",).obs;

  User.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
  }

  Map<String, dynamic> toJson() => {'id':id, 'name':name };
}