import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import the ScreenUtil package
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';

class DisclaimersScreen extends StatelessWidget {
  const DisclaimersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Disclaimers",
        onBack: () {
          Navigator.pop(context);
        },
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w), // Use ScreenUtil for padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stumble is not a substitute for therapy or medical advice.",
              style: TextStyle(
                fontSize: 16.sp, // Use ScreenUtil for font size
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.h), // Adjust spacing with ScreenUtil
            Text(
              "If you are in crisis, use the Support Button for resources — or call:",
              style: TextStyle(
                fontSize: 16.sp, // Use ScreenUtil for font size
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12.h), // Adjust spacing with ScreenUtil
            Padding(
              padding: EdgeInsets.only(left: 16.w), // Adjust left padding with ScreenUtil
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• U.S. & Canada: 988 Suicide & Crisis Lifeline",
                    style: TextStyle(
                      fontSize: 14.sp, // Use ScreenUtil for font size
                      color: Colors.black,
                      height: 1.4, // Maintain line height
                    ),
                  ),
                  SizedBox(height: 4.h), // Adjust spacing with ScreenUtil
                  Text(
                    "• UK & Ireland: Samaritans at 116 123",
                    style: TextStyle(
                      fontSize: 14.sp, // Use ScreenUtil for font size
                      color: Colors.black,
                      height: 1.4, // Maintain line height
                    ),
                  ),
                  SizedBox(height: 4.h), // Adjust spacing with ScreenUtil
                  Text(
                    "• Elsewhere: See findahelpline.com for local hotlines",
                    style: TextStyle(
                      fontSize: 14.sp, // Use ScreenUtil for font size
                      color: Colors.black,
                      height: 1.4, // Maintain line height
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24.h), // Adjust spacing with ScreenUtil
            Text(
              "Stumble is a peer-support and wellness tool only.",
              style: TextStyle(
                fontSize: 16.sp, // Use ScreenUtil for font size
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 40.h), // Adjust spacing with ScreenUtil
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 60.w, // Adjust width with ScreenUtil
        height: 60.w, // Adjust height with ScreenUtil (keep it square)
        decoration: BoxDecoration(
          color: const Color(0xFFFF6B35), // Orange color for SOS button
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            "SOS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp, // Use ScreenUtil for font size
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}