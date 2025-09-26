import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/community/day_one_badge_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class FoundersBadgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE35D24), // Orange background
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.w),
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.r), // Rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Title Section
                Text(
                  'Founders badge',
                 textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
                SizedBox(height: 10.h), // Space after the title

                // Grid of badges (using Row + Column for flexibility)
                Column(
                  children: [
                    // First row with 3 badges
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BadgeItem(badgeText: '1 reply', points: '50 points', unlocked: true),
                        BadgeItem(badgeText: '3 replies', points: '50 points', unlocked: false),
                        BadgeItem(badgeText: '5 replies', points: '50 points', unlocked: false),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    // Second row with 3 badges
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BadgeItem(badgeText: '10 replies', points: '50 points', unlocked: false),
                        BadgeItem(badgeText: '15 replies', points: '50 points', unlocked: false),
                        BadgeItem(badgeText: '20 replies', points: '50 points', unlocked: false),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    // Third row with 3 badges
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BadgeItem(badgeText: '50 replies', points: '50 points', unlocked: false),
                        BadgeItem(badgeText: '100 replies', points: '50 points', unlocked: false),
                        BadgeItem(badgeText: '300 replies', points: '50 points', unlocked: false),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 30.h), // Space before the button

                // Subtitle text
                Text(
                  'Give support by replying to post on the feed',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),

                SizedBox(height: 30.h), // Space before the button

                // Next Button with Linear Gradient
              CustomButton(text: "Next", onPressed: () {

                Get.toNamed(RouteName.dayOneBadge);


              },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Custom Badge item widget
class BadgeItem extends StatelessWidget {
  final String badgeText;
  final String points;
  final bool unlocked;

  const BadgeItem({
    required this.badgeText,
    required this.points,
    required this.unlocked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Badge icon (locked or unlocked)
        Container(
          width: 60.w,
          height: 60.h,
          decoration: BoxDecoration(
            color: unlocked ? Colors.orange : Colors.grey[300],
            shape: BoxShape.circle,
            border: Border.all(color: unlocked ? Colors.orange : Colors.grey),
          ),
          child: unlocked
      ? Image.asset(
      'assets/images/community/picture2.png', // Replace with your image path
      width: 30.sp, // Set the width of the image
      height: 30.sp, // Set the height of the image
      fit: BoxFit.cover, // Ensure the image fits nicely inside the container
    )
        : Icon(
    Icons.lock,
    color: Colors.white,
    size: 30.sp,
    ),

    ),
        SizedBox(height: 10.h),
        // Badge text and points
        Text(
          badgeText,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        Text(
          points,
          style: TextStyle(fontSize: 12.sp, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
