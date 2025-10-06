import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/community/community_picker_screen.dart';
import 'package:joe_stumble/feature/community/founder_badge_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class IntroductionLevelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE35D24), // Orange background
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.w), // Apply margin for spacing
            padding: EdgeInsets.all(24.w), // Padding inside the container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.r), // Rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(
                  child: Text(
                    'Introduction levels',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                // Image Section
                Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.asset(
                      'assets/images/community/picture1.jpg', // Replace with your image asset
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20.h), // Space after the image
                // Title Section

                SizedBox(height: 10.h),
                // Feature List
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 18.sp),
                        SizedBox(width: 8.w),
                        Text(
                          'Earn community points',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 18.sp),
                        SizedBox(width: 8.w),
                        Text(
                          'Unlock badges',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 18.sp),
                        SizedBox(width: 8.w),
                        Text(
                          'Level up',
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                // Subtitle text
                Text(
                  'A way to celebrate members who contribute positively to our community',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 30.h), // Space before the button
                // Next Button with Linear Gradient
               CustomButton(text: "Next", onPressed: () {

                 Get.toNamed(RouteName.founderBadge);


               },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
