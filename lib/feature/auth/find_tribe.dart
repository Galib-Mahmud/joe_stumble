import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
      backgroundColor: Colors.white,
      // Keep your CustomAppBar
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          // Full-screen background image
          Positioned.fill(
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                'assets/images/avatar/findyourtribe.jpg',
                // replace with .webp if you converted
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),

                  // Title below AppBar
                  Text(
                    "Find Your Tribe",
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // white for contrast
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(1, 1),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Benefits :",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // white for contrast
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(1, 1),
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  // Benefits list
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("👀", style: TextStyle(fontSize: 22)),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Text(
                              "Lurk until you’re ready",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Text("🤝", style: TextStyle(fontSize: 22)),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Text(
                              "Peer-based support",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Text("🤖", style: TextStyle(fontSize: 22)),
                          SizedBox(width: 12.w),
                          Expanded(
                            child: Text(
                              "24/7 Color Wheel Bots so you’re never alone",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                 SizedBox(height: 320.h),

                  // Button at bottom
                  CustomButton(
                    text: "Take a quiz",
                    onPressed: () {
                      Get.toNamed(RouteName.question1);
                    },
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
