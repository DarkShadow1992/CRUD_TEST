import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'DeleteUserService.dart';

class DeleteUserController extends GetxController {
  DeleteUser_Service services = DeleteUser_Service();
  RxString username="".obs;

  @override
  void onInit() {
    super.onInit();
  }

  Register() async {
     try {
      Get.snackbar("Delete", "Deleteing...",backgroundColor: Colors.yellow,);
      var result = await services.login(username.value);
      if (result != null) {
        Get.snackbar("Delete", "OK",snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green,colorText: Colors.white,margin: EdgeInsets.fromLTRB(10, 10, 10, 20));

      } else {
        print("null");
      }
    } finally {
    }
  }

}