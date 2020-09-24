class User {

  final int id;
  final String email, firstName, lastName, avatar;


  User({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar});

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id:json['id'],
      email:json['email'],
      firstName:json['first_name'],
      lastName:json['last_name'],
      avatar:json['avatar'],


    );
  }

  /*User.fromJson(Map<String, dynamic> json){
    this.id = json['id'];
    this.name = json['name'];
  }*/

 /* Map<String, dynamic> toJson() => {'id': id, 'name': name};*/
}
