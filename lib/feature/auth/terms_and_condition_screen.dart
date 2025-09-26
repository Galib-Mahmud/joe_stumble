import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/get_mentor.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  State<TermsAndConditionsScreen> createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        // Title for the AppBar
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),

            // Eligibility Section
            Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 24.sp,
                ),
                SizedBox(width: 8.w),
                Text(
                  "Eligibility",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              "By using this app you agree not to upload post or share content -",
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 20.h),
            Text(
              "• Is obscene, abusive or otherwise objectionable",
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 20.h),
            Text(
              "• Is obscene, abusive or otherwise objectionable",
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 20.h),
            Text(
              "• Is obscene, abusive or otherwise objectionable",
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            SizedBox(height: 20.h),

            // Violators Section
            Row(
              children: [
                Icon(Icons.block, color: Colors.black, size: 24.sp),
                SizedBox(width: 8.w),
                Text(
                  "Violators",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              "By using this app you agree not to upload post or share content",
              style: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            TextButton(
              onPressed: () {
                // Action to read more content
              },
              child: Text(
                "read more",
                style: TextStyle(fontSize: 14.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Keep our community safe",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),

              ],
            ),
            SizedBox(height: 30.h),

            // Agree Button
            CustomButton(
              text: "I agree",
              onPressed: () {
                Get.toNamed(RouteName.getMentor);
              },
            ),

            SizedBox(height: 40.h),

            // Privacy and Terms Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Privacy Policy & Terms & services",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
