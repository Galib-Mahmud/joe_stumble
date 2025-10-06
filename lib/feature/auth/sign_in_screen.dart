import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_appbar.dart';
import '../widget/splash/custom_button.dart';
import '../widget/splash/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70.h),

                // Title
                Text(
                  "Sign In",
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
                SizedBox(height: 10.h),

                // Forgot password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Get.toNamed(RouteName.forgetPassword);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 14.sp, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                // Sign In Button
                Center(
                  child: CustomButton(
                    text: "Sign In",
                    onPressed: () {
                      Get.toNamed(RouteName.testHomeScreen);
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

                // Sign Up
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
                        style: TextStyle(fontSize: 14.sp, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
