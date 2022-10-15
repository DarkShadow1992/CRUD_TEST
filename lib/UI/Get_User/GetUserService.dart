import 'dart:async';
import 'dart:convert';
import 'package:crud/API_CLASESS/GetUserClass.dart';
import 'package:http/http.dart' as http;
import '../../API_CLASESS/RegisterClass.dart';
import '../../API_CLASESS/URLS.dart';

class GetUser_Service {

  Future<GetUserClass?> login(String username) async {

    try {
      var response = await http
          .get(Uri.parse(Urls.getuser()+username),headers: <String, String>{
        'Content-Type': 'application/json',
      })
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      print("  body  "+response.body.toString()+"  CODE   "+response.statusCode.toString());

      if (response.statusCode == 200) {
        var map = json.decode(response.body);
        GetUserClass getUserClass = GetUserClass.fromJson(map);

        return getUserClass;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

}