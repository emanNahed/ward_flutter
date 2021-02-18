import 'dart:convert';
class User {
  String id;
  String name;
  String phoneNumber;
  String mail;
  String password;
  String address;
  String imageUrl;

  User({this.id, this.name, this.phoneNumber, this.password, this.mail, this.address, this.imageUrl});

  factory User.fromJson(Map<String, dynamic> map){ //actory keyword when implementing a constructor that doesn’t always create a new instance of its class.
    return User(
      id: map["id"],
      name: map["name"],
      mail: map["email"],
      password: map["password"],
      phoneNumber: map["phone"],
    );
  }

  Map<String, dynamic> toJson(){
    return {"id": id, "name": name, "email": mail, "password": password, "phone": phoneNumber};
  }

  List<User> UserFromJson(String jsonData){
    final data= json.decode(jsonData);
    return List<User>.from(data.map((item) => User.fromJson(item)));
  }

  String UserToJson(){
    final jsonData= toJson();
    return json.encode(jsonData);
  }

}