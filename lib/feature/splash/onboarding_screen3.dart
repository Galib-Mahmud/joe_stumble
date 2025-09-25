// lib/screens/onboarding_screen3.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/sign_in_screen.dart';
import 'package:joe_stumble/feature/splash/question1.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_button.dart'; // Import CustomButton

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set the background image for the entire Scaffold
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash/onboarding3.jpg'), // Replace with your image
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
                  'Start Your Journey',
                  style: TextStyle(
                    fontSize: 20.sp, // Scaled font size using ScreenUtil
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // White text for visibility
                  ),
                ),
                SizedBox(height: 30.h), // Scaled height using ScreenUtil
                // "Finish" button
                CustomButton(
                  text: 'Finish',
                  onPressed: () {
                  Get.toNamed(RouteName.signin);


                  },
                  isFinishButton: true, // Mark it as a "Finish" button
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
