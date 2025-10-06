import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int secondsRemaining = 40; // initial countdown seconds
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        timer.cancel(); // stop when finished
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel(); // cleanup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Format time as 0:22 style
    String formattedTime =
        "0:${secondsRemaining.toString().padLeft(2, '0')}";

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
                "Enter OTP",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              CustomTextField(
                labelText: "OTP",
                width: 340.w,
                height: 49.h,
              ),
              SizedBox(height: 30.h),

              CustomButton(
                text: "Submit",
                onPressed: () {

               Get.toNamed(RouteName.resetPassword);
                },
              ),
              SizedBox(height: 30.h),

              // Countdown Text
              Text(
                "We sent a verification code to your email. Please check.\nIf not, resend in $formattedTime minutes.",
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.black,
                ),
              ),

              // Resend button after countdown ends
              if (secondsRemaining == 0) ...[
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      secondsRemaining = 50; // reset countdown
                      startTimer();
                    });
                  },
                  child: Text(
                    "Resend",
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black,

                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
