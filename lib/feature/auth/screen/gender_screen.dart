import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../controller/gender_controller.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  final genderController = Get.put(GenderController());

  Widget buildRadioOption(String value) {
    return Obx(() => ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        value,
        style: TextStyle(fontSize: 16.sp, color: Colors.black),
      ),
      leading: Radio<String>(
        value: value.toLowerCase(),
        groupValue: genderController.selectedGender.value,
        onChanged: (val) => genderController.setGender(val),
        activeColor: Colors.orange,
      ),
    ));
  }

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
                  "What’s your gender?",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h),
                Column(
                  children: [
                    buildRadioOption('Male'),
                    buildRadioOption('Female'),
                    buildRadioOption('Other'),
                  ],
                ),
                SizedBox(height: 120.h),
                Text(
                  "This helps us create a safe space for all our members",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h),
                Obx(() => genderController.isLoading.value
                    ? CircularProgressIndicator()
                    : CustomButton(
                  text: "Next",
                  onPressed: () {
                    genderController.submitGender();
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
