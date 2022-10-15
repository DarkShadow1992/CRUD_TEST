import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'GetUserService.dart';

class GetUserController extends GetxController {
  GetUser_Service services = GetUser_Service();
  RxString username="".obs;
  var Showcontroller=TextEditingController().obs;

  @override
  void onInit() {
    super.onInit();
  }

  Register() async {
     try {
      Get.snackbar("Get User", "Getting...",backgroundColor: Colors.yellow,);
      var result = await services.login(username.value);
      if (result != null) {
        Get.snackbar("Get User", "OK",snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green,colorText: Colors.white,margin: EdgeInsets.fromLTRB(10, 10, 10, 20));

        Showcontroller.value.text=
            result.firstName+"\n"+
                result.lastName+"\n"+
                result.email+"\n"+
                result.phone+"\n"+
                result.password;
      } else {
        print("null");
      }
    } finally {
    }
  }

}