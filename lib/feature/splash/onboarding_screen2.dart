// lib/screens/onboarding_screen2.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_button.dart';
import 'onboarding_screen3.dart'; // Import CustomButton

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set the background image for the entire Scaffold
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash/onboarding2.jpg'), // Replace with your image
            fit: BoxFit.cover, // Make the image cover the screen
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Centered text over the image
                Text(
                  'Welcome to Stumble',
                  style: TextStyle(
                    fontSize: 20.sp, // Scaled font size using ScreenUtil
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text for visibility
                  ),
                ),
                SizedBox(height: 40.h), // Scaled height using ScreenUtil
                // "Next" button
                CustomButton(
                  text: 'Next',
                  onPressed: () {
                 Get.toNamed(RouteName.onboarding3);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
