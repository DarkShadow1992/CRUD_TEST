import 'dart:convert';

RegisterClass registerClassFromJson(String str) => RegisterClass.fromJson(json.decode(str));

String registerClassToJson(RegisterClass data) => json.encode(data.toJson());

class RegisterClass {
  RegisterClass({
    required this.code,
    required this.type,
    required this.message,
  });

  int code;
  String type;
  String message;

  factory RegisterClass.fromJson(Map<String, dynamic> json) => RegisterClass(
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
