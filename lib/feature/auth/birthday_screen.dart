import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/gender_screen.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import '../widget/splash/custom_text_field.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {



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
                  "When’s your birthday",
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextField(labelText: "MM", width: 106.w, height: 49.h),
                    CustomTextField(labelText: "DD", width: 106.w, height: 49.h),
                    CustomTextField(labelText: "YY", width: 106.w, height: 49.h)
                  ],
                ),
                SizedBox(height: 120.h),
                // Countdown Text
                Text(
                  "We ‘ll use this to match you around with others of the same age",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.h),

                CustomButton(
                  text: "Next",
                  onPressed: () {

                    Get.to(GenderScreen());
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
