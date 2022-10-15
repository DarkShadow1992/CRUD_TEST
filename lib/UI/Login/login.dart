import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Utils/HexColor.dart';
import 'loginController.dart';

class Login extends StatelessWidget {
  var controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1440, 3040),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,i) =>  SafeArea(
            child: Directionality(
                textDirection: TextDirection.ltr,
                child: Scaffold(
                  backgroundColor: Colors.black,
                  resizeToAvoidBottomInset: true,
                  body: Container(
                      alignment: Alignment.center,
                      child: Padding(padding: EdgeInsets.fromLTRB(150.w, 0.h, 150.w, 0.h),
                        child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text('REGISTER',style: TextStyle(color: Colors.white)),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 40.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "username",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          onChanged: (text) {
                                            controller.username.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/user_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 40.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "firstName",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          onChanged: (text) {
                                            controller.firstName.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/user_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 40.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "lastName",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          onChanged: (text) {
                                            controller.lastName.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/user_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 40.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "email",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          onChanged: (text) {
                                            controller.email.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/user_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 20.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(

                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "phone",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          onChanged: (text) {
                                            controller.phone.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/user_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 40.h, 80.w, 40.h),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Container(
                                        width: Get.size.width/1.3,
                                        height: 170.h,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(50.w),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              disabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: HexColor("#243841")
                                                        .withAlpha(26)),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(100.h),
                                                borderSide: new BorderSide(
                                                    color: Colors.red),
                                              ),
                                              filled: true,
                                              hintText: "Password",
                                              hintStyle: TextStyle(color: Colors.grey),
                                              fillColor: HexColor("#F5F5F9")),
                                          textAlign: TextAlign.center,
                                          maxLines: 1,
                                          obscureText: true,
                                          onChanged: (text) {
                                            controller.password.value=text;
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: Padding(padding: EdgeInsets.fromLTRB(50.w, 50.h, 50.w, 50.h),child: SvgPicture.asset('assets/pass_login.svg'),),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(80.w, 20.h, 80.w, 20.h),child:
                                Container(
                                  child: ElevatedButton(
                                    child: Text("REGISTER"),
                                    onPressed: () {
                                      controller.Register();
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
                                  width: Get.mediaQuery.size.width,
                                  height: 170.h,
                                )
                                ),
                              ],
                            )
                        ),
                      )
                  ),
                ))));
  }
}