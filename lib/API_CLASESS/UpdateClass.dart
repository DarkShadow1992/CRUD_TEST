import 'dart:convert';

UpdateClass updateClassFromJson(String str) => UpdateClass.fromJson(json.decode(str));

String updateClassToJson(UpdateClass data) => json.encode(data.toJson());

class UpdateClass {
  UpdateClass({
    required this.code,
    required this.type,
    required this.message,
  });

  int code;
  String type;
  String message;

  factory UpdateClass.fromJson(Map<String, dynamic> json) => UpdateClass(
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
