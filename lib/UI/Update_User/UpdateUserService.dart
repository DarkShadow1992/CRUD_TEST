import 'dart:async';
import 'dart:convert';
import 'package:crud/API_CLASESS/UpdateClass.dart';
import 'package:http/http.dart' as http;
import '../../API_CLASESS/URLS.dart';

class UpdateUser_Service {

  Future<UpdateClass?> login(String username,String firstName,String lastName,String email,String password,String phone) async {
    var body = json.encode({
      "username": username,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
      "phone": phone
    });

    try {
      var response = await http
          .put(Uri.parse(Urls.getuser()+username),body: body,headers: <String, String>{
        'Content-Type': 'application/json',
      })
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      print("  body  "+response.body.toString()+"  CODE   "+response.statusCode.toString());

      if (response.statusCode == 200) {
        var map = json.decode(response.body);
        UpdateClass updateClass = UpdateClass.fromJson(map);

        return updateClass;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

}