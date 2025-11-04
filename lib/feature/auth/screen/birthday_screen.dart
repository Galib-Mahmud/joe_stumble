import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../../widget/splash/custom_text_field.dart';
import '../controller/birthday_controller.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  final birthdayController = Get.put(BirthdayController());

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
              children: [
                SizedBox(height: 70.h),
                Text(
                  "When’s your birthday",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 60.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomTextField(
                        labelText: "MM",
                        width: 106.w,
                        height: 49.h,
                        controller: birthdayController.monthController),
                    CustomTextField(
                        labelText: "DD",
                        width: 106.w,
                        height: 49.h,
                        controller: birthdayController.dayController),
                    CustomTextField(
                        labelText: "YY",
                        width: 106.w,
                        height: 49.h,
                        controller: birthdayController.yearController),
                  ],
                ),
                SizedBox(height: 120.h),
                Text(
                  "We’ll use this to match you around with others of the same age",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h),
                Obx(() => birthdayController.isLoading.value
                    ? CircularProgressIndicator()
                    : CustomButton(
                  text: "Next",
                  onPressed: () {
                    birthdayController.submitBirthday();
                  },
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

