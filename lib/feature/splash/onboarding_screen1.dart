// lib/screens/onboarding_screen1.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen2.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_button.dart'; // Import CustomButton

class OnboardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set the background image for the entire Scaffold
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash/onboarding1.jpg'), // Set your image path here
            fit: BoxFit.cover, // Make the image cover the screen
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 70),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Centered text over the image
                Text(
                  'Where healing meets connection.',
                  style: TextStyle(
                    fontSize: 20.sp, // Scaled font size using ScreenUtil
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text for visibility
                  ),
                ),
                SizedBox(height: 40.h), // Scaled height using ScreenUtil
                // Use CustomButton widget here
                CustomButton(
                  text: 'Next',
                  onPressed: () {
                    Get.toNamed(RouteName.onboarding2);
                    // Navigate to the nex
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
