import 'dart:async';
import 'dart:convert';
import 'package:crud/API_CLASESS/GetUserClass.dart';
import 'package:http/http.dart' as http;
import '../../API_CLASESS/DeleteUserClass.dart';
import '../../API_CLASESS/URLS.dart';

class DeleteUser_Service {

  Future<DeleteUserClass?> login(String username) async {

    try {
      var response = await http
          .delete(Uri.parse(Urls.getuser()+username))
          .timeout(const Duration(seconds: 30), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      print("  body  "+response.body.toString()+"  CODE   "+response.statusCode.toString());

      if (response.statusCode == 200) {
        var map = json.decode(response.body);
        DeleteUserClass deleteUserClass = DeleteUserClass.fromJson(map);

        return deleteUserClass;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

}