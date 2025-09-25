import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/forgot_password_screen.dart';
import 'package:joe_stumble/feature/auth/username_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';
import 'package:joe_stumble/route/route_name.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              SizedBox(height: 70.h),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              CustomTextField(
                labelText: "E-mail",
                width: 340.w,
                height: 49.h,
              ),
              SizedBox(height: 20.h),

              CustomTextField(
                labelText: "Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),

              CustomTextField(
                labelText: "Re-Type Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),



              CustomButton(text: "Sign Up", onPressed: () {
               Get.toNamed(RouteName.birthday);
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
              // Google and Apple buttons
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
              SizedBox(height: 20.h),

              // Privacy Policy text
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                    'By clicking the “sign up” button, you accept the terms of the ',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // TODO: Navigate to Privacy Policy Screen
                          },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),


            ],
          ),
        ),
      ),
    );
  }
}
