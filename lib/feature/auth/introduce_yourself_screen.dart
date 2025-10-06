import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/terms_and_condition_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class IntroduceYourselfScreen extends StatefulWidget {
  const IntroduceYourselfScreen({super.key});

  @override
  State<IntroduceYourselfScreen> createState() => _IntroduceYourselfScreenState();
}

class _IntroduceYourselfScreenState extends State<IntroduceYourselfScreen> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: CustomAppBar(),


      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),

            // Title
            Text(
              "Introduce yourself",
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 30.h),

            // Avatar
            CircleAvatar(
              radius: 45.r,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: AssetImage('assets/images/avatar/avatar4.png'),
            ),

            SizedBox(height: 30.h),

            // Multiline Input
            TextField(
              controller: _textController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "What's on your mind ?",
                hintStyle: TextStyle(fontSize: 15.sp, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: EdgeInsets.all(16.w),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 30.h),

            // Helper text
            Text(
              "This is a safe space to share your struggle, get advice and support each other",
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),

          SizedBox(height: 100.h),
            // Post Button
            CustomButton(
              text: "Post",
              onPressed: () {
               Get.toNamed(RouteName.termsandcondition);
              },
            ),

            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
