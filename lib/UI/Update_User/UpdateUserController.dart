import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'UpdateUserService.dart';

class UpdateUserController extends GetxController {
  UpdateUser_Service services = UpdateUser_Service();
  RxString username="".obs;
  RxString firstName="".obs;
  RxString lastName="".obs;
  RxString email="".obs;
  RxString phone="".obs;
  RxString password="".obs;

  @override
  void onInit() {
    super.onInit();
  }

  Register() async {
     try {
      Get.snackbar("Update", "Updating...",backgroundColor: Colors.yellow,);
      var result = await services.login(username.value,firstName.value,lastName.value,email.value,password.value,phone.value);
      if (result != null) {
        Get.snackbar("Update", "OK",snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green,colorText: Colors.white,margin: EdgeInsets.fromLTRB(10, 10, 10, 20));

      } else {
        print("null");
      }
    } finally {
    }
  }

}