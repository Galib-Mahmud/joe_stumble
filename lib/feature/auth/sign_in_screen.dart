import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/forgot_password_screen.dart';

import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../widget/splash/custom_appbar.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white, // White background

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          // Ensure the content is scrollable
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // Align text to the left
            children: [
              // Title
              SizedBox(height: 70.h),
              // Adjusted top padding to center the title
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              // Email input field
              CustomTextField(labelText: "E-mail",
                width: 340.w,
                height: 49.h,

              ),
              SizedBox(height: 20.h),

              // Password input field
              CustomTextField(
                labelText: "Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),

              // Forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                   Get.toNamed(RouteName.forgetPassword);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),

              // Sign in button
              CustomButton(text: "Sign In", onPressed: () {
                Get.toNamed(RouteName.homeDashBoard);
              }),

              SizedBox(height: 30.h),

              // Underline with "or" text
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 200.w, // Customize the width of the line
                      height: 2.h, // Line thickness
                      color: Colors.grey, // Line color
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'or',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),

              // Google and Apple sign-in buttons with image
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 56.h,
                        width: 100.w,
                        child: Image.asset(
                          'assets/images/auth/Google.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        height: 56.h,
                        width: 100.w,
                        child: Image.asset(
                          'assets/images/auth/apple.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Sign up text
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RouteName.signUp);
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
