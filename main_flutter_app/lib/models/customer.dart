class Customer {
  String Id;
  String balance;
  String picture;
  int age;
  String eyeColor;
  String name;
  String gender;
  String company;
  String email;
  String phone;
  String address;
  String website;

  Customer(this.Id,this.balance,this.picture,this.age,this.eyeColor,this.name,this.gender,this.company,this.email,this.phone,this.address,this.website);

  Customer.fromJson(dynamic json)
  {
    Id = json["_id"];
    balance = json["balance"];
    picture = json["picture"];
    age = json["age"];
    eyeColor = json["eyeColor"];
    name = json["name"];
    gender = json["gender"];
    company = json["company"];
    email = json["email"];
    phone = json["phone"];
    address = json["address"];
    website = json["website"];
  }
}