import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:joe_stumble/feature/community/introduction_level.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class CommunityPickerScreen extends StatefulWidget {
  const CommunityPickerScreen({Key? key}) : super(key: key);

  @override
  State<CommunityPickerScreen> createState() => _CommunityPickerScreenState();
}

class _CommunityPickerScreenState extends State<CommunityPickerScreen> {
  // List of communities to choose from
  final List<String> communities = [
    "Loneliness",
    "Breakups",
    "Twentysomethings",
    "Anxiety",
    "Depression",
    "ADHD",
    "LGBTQ +",
    "Intros",
    "Wins",
    "Advice",
  ];

  // Store the selected community (single selection)
  String selectedCommunity = "Loneliness";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE86933), // Orange background
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w), // Apply margin
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.r), // Rounded corners
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cancel button in the top-right corner
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Navigate back
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Title
                Text(
                  "Pick a community",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                // Subheading text
                Text(
                  "Please select a community you'd like to share with",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 20.h),
                // List of Radio buttons (single selection)
                Expanded(
                  child: ListView.builder(
                    itemCount: communities.length,
                    itemBuilder: (context, index) {
                      final item = communities[index];
                      return RadioListTile<String>(
                        value: item,
                        groupValue: selectedCommunity,
                        onChanged: (value) {
                          setState(() {
                            selectedCommunity = value!;
                          });
                        },
                        title: Text(
                          item,
                          style: TextStyle(fontSize: 16.sp),
                        ),
                        activeColor: Colors.black, // Active color of radio button
                        contentPadding: EdgeInsets.zero,
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.h), // Add space before the button
                // Custom Button at the end
               CustomButton(text: 'Next', onPressed: () {

                Get.toNamed(RouteName.introductionLevel);


               },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
