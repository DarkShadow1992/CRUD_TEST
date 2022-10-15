// @dart=2.8
import 'dart:async';
import 'package:crud/UI/Delete_User/DeleteUser.dart';
import 'package:crud/UI/Get_User/GetUser.dart';
import 'package:crud/UI/Login/login.dart';
import 'package:crud/UI/Update_User/UpdateUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'Utils/HexColor.dart';
import 'mainController.dart';

Future<void> main() async {
  runApp(Splash());
}

class Splash extends StatelessWidget {
  var controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 3040),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, i) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
                body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 100.h),child: Text('CRUD TEST',style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 120.sp
                  )),),
                  ElevatedButton(
                    child: Text("REGISTER USER"),
                    onPressed: () {
                      Get.to(Login());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.h,
                      primary: HexColor("FF3A00"),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.h),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("GET USER"),
                    onPressed: () {
                      Get.to(GetUser());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.h,
                      primary: HexColor("FF3A00"),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.h),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("UPDATE USER"),
                    onPressed: () {
                      Get.to(UpdateUser());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.h,
                      primary: HexColor("FF3A00"),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.h),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("DELETE USER"),
                    onPressed: () {
                      Get.to(DeleteUser());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.h,
                      primary: HexColor("FF3A00"),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.h),
                      ),
                    ),
                  ),
                ],
              ),
            ))));
  }
}