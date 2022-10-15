import 'dart:convert';

GetUserClass getUserClassFromJson(String str) => GetUserClass.fromJson(json.decode(str));

String getUserClassToJson(GetUserClass data) => json.encode(data.toJson());

class GetUserClass {
  GetUserClass({
    required this.id,
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phone,
    required this.userStatus,
  });

  int id;
  String username;
  String firstName;
  String lastName;
  String email;
  String password;
  String phone;
  int userStatus;

  factory GetUserClass.fromJson(Map<String, dynamic> json) => GetUserClass(
    id: json["id"],
    username: json["username"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    password: json["password"],
    phone: json["phone"],
    userStatus: json["userStatus"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "firstName": firstName,
    "lastName": lastName,
    "email": email,
    "password": password,
    "phone": phone,
    "userStatus": userStatus,
  };
}
