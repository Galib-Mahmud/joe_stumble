import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/splash/question3.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_button.dart'; // Import CustomButton

class Question2 extends StatefulWidget {
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
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
      appBar:CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Bar (40% completion for Question 2/5)
            LinearProgressIndicator(
              value: 0.4, // 40% completion (for question 2/5)
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            SizedBox(height: 20.h),
            // Question Text
            Text(
              'Question 2/5',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'How long has it been since your breakup (or separation)?',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.h),

            // Radio Buttons (Options)
            Column(
              children: [
                _buildRadioOption('Within the last week'),
                _buildRadioOption('About a month ago'),
                _buildRadioOption('About 6 months ago'),
                _buildRadioOption('Over 12 months ago'),
              ],
            ),

            SizedBox(height: 100.h),
            CustomButton(text: "Next", onPressed: () {
         Get.toNamed(RouteName.question3);
            },)
          ],
        ),
      ),
    );
  }

  // Helper function to build each radio button option
  Widget _buildRadioOption(String value) {
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
