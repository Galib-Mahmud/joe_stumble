import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../../widget/splash/custom_text_field.dart';
import '../controller/reset_password_controller.dart';


class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final ResetPasswordController resetPasswordController = Get.put(ResetPasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Title Row
              SizedBox(height: 70.h),
              Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              // Email Input Field
              CustomTextField(
                labelText: "Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
                controller: resetPasswordController.passwordController,
              ),
              SizedBox(height: 20.h),

              CustomTextField(
                labelText: "Re-Type Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
                controller: resetPasswordController.confirmPasswordController,
              ),
              SizedBox(height: 30.h),

              // Send OTP Button
              CustomButton(
                text: "Confirm",
                onPressed: () {
                  resetPasswordController.resetPassword();



                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
