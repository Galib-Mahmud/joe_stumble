import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';
import 'package:joe_stumble/route/route_name.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70.h),

                // Title
                Text(
                  "When’s your birthday",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 60.h),

                // Birthday Inputs
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(labelText: "MM", width: 100.w, height: 49.h),
                    CustomTextField(labelText: "DD", width: 100.w, height: 49.h),
                    CustomTextField(labelText: "YY", width: 100.w, height: 49.h),
                  ],
                ),
                SizedBox(height: 120.h),

                // Info Text
                Text(
                  "We'll use this to match you with others of the same age",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h),

                // Next Button
                Center(
                  child: CustomButton(
                    text: "Next",
                    onPressed: () {
                      Get.toNamed(RouteName.gender);
                    },
                    width: 340.w,
                    height: 49.h,
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
