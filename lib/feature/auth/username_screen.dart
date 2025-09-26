import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/birthday_screen.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_text_field.dart';

class UserName extends StatefulWidget {
  const UserName({super.key});

  @override
  State<UserName> createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70.h),
                Text(
                  "Choose your name",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h),

                SizedBox(

                  width: 250.w,
                  child: TextField(

                    decoration: InputDecoration(

                      hintText: "Your Name",
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),),
                    ),
                  ),
                ),

                SizedBox(height: 120.h),
                // Countdown Text
                Text(
                  "This helps us keep you anonymous",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.h),

                CustomButton(
                  text: "Next",
                  onPressed: () {

                   Get.toNamed(RouteName.birthday);
                  },
                ),






              ],
            ),
          ),
        ),
      ),
    );
  }
}
