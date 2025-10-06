import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/splash/question2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../widget/splash/custom_button.dart';

class Question1 extends StatefulWidget {
  @override
  _Question1State createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  // Store the selected answer
  String? _selectedOption;

  // Function to handle radio button selection
  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Bar
            LinearProgressIndicator(
              value: 0.2, // 20% completion (for question 1/5)
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            SizedBox(height: 20.h),
            // Question Text
            Text(
              'Question 1/5',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Where are you right now in your relationship journey?',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),

            // Radio Buttons (Options)
            Column(
              children: [
                buildRadioOption('In a relationship, but it’s ending'),
                buildRadioOption('Newly single / freshly divorced'),
                buildRadioOption('Stuck in back-and-forth or complicated'),
                buildRadioOption('Broken up, still healing'),
                buildRadioOption('Trying to repair or rebuild'),
              ],
            ),

            SizedBox(height: 100.h),
            CustomButton(
              text: 'Next',
              onPressed: () {
             Get.toNamed(RouteName.question2);


              },
              isFinishButton: true, // Mark it as a "Finish" button
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to build each radio button option
  Widget buildRadioOption(String value) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(value, style: TextStyle(fontSize: 16.sp, color: Colors.black)),
      leading: Radio<String>(
        value: value,
        groupValue: _selectedOption,
        onChanged: _handleRadioValueChange,
        activeColor: Colors.orange,
      ),
    );
  }
}
