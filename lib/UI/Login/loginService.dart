import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../API_CLASESS/RegisterClass.dart';
import '../../API_CLASESS/URLS.dart';

class Login_Service {

  Future<RegisterClass?> login(String username,String firstName,String lastName,String email,String password,String phone) async {
    var body = json.encode({
      "username": username,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "phone": phone
    });

    print("  body  "+body.toString());

    try {
      var response = await http
          .post(Uri.parse(Urls.reg()),body: body,headers: <String, String>{
        'Content-Type': 'application/json',
      })
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      print("  body  "+response.body.toString()+"  CODE   "+response.statusCode.toString());

      if (response.statusCode == 200) {
        var map = json.decode(response.body);
        RegisterClass registerClass = RegisterClass.fromJson(map);

        return registerClass;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

}