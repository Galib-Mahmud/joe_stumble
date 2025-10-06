import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/animation.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen1.dart';
import 'package:joe_stumble/route/route_name.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Animation duration (1 second)
    )..repeat(reverse: true); // Make it repeat and reverse for an up/down effect

    // Tween animation (moves image up and down)
    _animation = Tween<double>(begin: -50.0, end: 50.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Navigate to the next screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
  Get.toNamed(RouteName.onboarding1);
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Image
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _animation.value), // Y-axis movement
                  child: child, // Use the image as the child widget
                );
              },
              child: Image.asset(
                'assets/images/splash/Stumble 2.png', // Path to your image
                height: 50.h, // Adjust the size of the image if needed
                width: 200.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50.h),
            // You can add more widgets here, like a text label if needed
          ],
        ),
      ),
    );
  }
}

