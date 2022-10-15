import 'dart:convert';

DeleteUserClass deleteUserClassFromJson(String str) => DeleteUserClass.fromJson(json.decode(str));

String deleteUserClassToJson(DeleteUserClass data) => json.encode(data.toJson());

class DeleteUserClass {
  DeleteUserClass({
    required this.code,
    required this.type,
    required this.message,
  });

  int code;
  String type;
  String message;

  factory DeleteUserClass.fromJson(Map<String, dynamic> json) => DeleteUserClass(
    code: json["code"],
    type: json["type"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "type": type,
    "message": message,
  };
}
