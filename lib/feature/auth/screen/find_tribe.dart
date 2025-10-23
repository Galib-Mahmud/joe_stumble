import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:joe_stumble/feature/splash/question1.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class FindYourTribeScreen extends StatefulWidget {
  const FindYourTribeScreen({super.key});

  @override
  State<FindYourTribeScreen> createState() => _FindYourTribeScreenState();
}

class _FindYourTribeScreenState extends State<FindYourTribeScreen> {
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

                // Title
                Text(
                  "Find Your Tribe",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 30.h),

                // Image
                Image.asset(
                  'assets/images/auth/new.png', // replace with your actual asset

                  fit: BoxFit.cover,
                ),

                SizedBox(height: 120.h),

                // Button
                CustomButton(
                  text: "Take a quiz",
                  onPressed: () {
                  Get.toNamed(RouteName.question1);
                  },
                ),

                SizedBox(height: 20.h),

                // Pricing text
                Text(
                  "\$2.49/month, billed yearly at \$29.99",
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10.h),

                // Restore purchases
                TextButton(
                  onPressed: () {
                    // TODO: Add restore purchase logic
                  },
                  child: Text(
                    "Restore purchases",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
