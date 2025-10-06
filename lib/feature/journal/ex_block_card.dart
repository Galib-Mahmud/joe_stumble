import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';

class ExBlockCard extends StatefulWidget {
  const ExBlockCard({super.key});

  @override
  State<ExBlockCard> createState() => _ExBlockCardState();
}

class _ExBlockCardState extends State<ExBlockCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "Ex Block",
        onBack: () => Navigator.pop(context),
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: 345.w,
              // Removed fixed height to make it scrollable if needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 40.h),
                  Text(
                    "Enter PIN",
                    style: TextStyle(
                      color: const Color(0xFF1A3C5E),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    labelText: "Enter 4 digit PIN",
                    width: 340.w,
                    height: 49.h,
                    isPassword: true,
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                        text: "Unlock",
                        onPressed: () {
                          // TODO: Add unlock logic
                        },
                      ),
                      CustomButton(
                        text: "Cancel",
                        onPressed: () {
                          Navigator.pop(context); // Close the screen
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
