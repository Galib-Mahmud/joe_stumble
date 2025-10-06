import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';
import 'package:joe_stumble/route/route_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.h),

              // Title
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              // Email
              CustomTextField(
                labelText: "E-mail",
                width: 340.w,
                height: 49.h,
              ),
              SizedBox(height: 20.h),

              // Password
              CustomTextField(
                labelText: "Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),

              // Re-Type Password
              CustomTextField(
                labelText: "Re-Type Password",
                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),

              // Sign Up Button
              Center(
                child: CustomButton(
                  text: "Sign Up",
                  onPressed: () {
                    Get.toNamed(RouteName.username);
                  },
                  width: 340.w,
                  height: 49.h,
                ),
              ),
              SizedBox(height: 30.h),

              // Divider with OR
              Center(
                child: Column(
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Container(
                        height: 2.h,
                        color: Colors.grey,
                      ),
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

              // Social Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120.w,
                    height: 56.h,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/auth/Google.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 120.w,
                    height: 56.h,
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/auth/apple.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),

              // Privacy Policy
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'By clicking “Sign Up”, you accept the terms\n of the ',
                    style: TextStyle(fontSize: 13.sp, color: Colors.black),
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
                            // TODO: Navigate to Privacy Policy screen
                          },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // Already have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RouteName.signin);
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
