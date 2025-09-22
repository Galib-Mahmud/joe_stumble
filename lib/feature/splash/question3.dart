// lib/screens/question3.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/splash/onboarding_screen3.dart';
import 'package:joe_stumble/feature/splash/question4.dart';
import '../widget/splash/custom_button.dart'; // Import CustomButton widget

class Question3 extends StatefulWidget {
  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  String? _selectedOption;

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/splash/Stumble 2.png', // Path to your image
          height: 30.h, // Adjust the size of the image if needed
          width: 115.w,
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Bar (60% completion for Question 3/5)
            LinearProgressIndicator(
              value: 0.6, // Represents progress (question 3/5)
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            SizedBox(height: 20.h),
            // Question Text
            Text(
              'Question 3/5',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'How do you feel about your current situation?',
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.h),

            // Radio Buttons (Options)
            Column(
              children: [
                _buildRadioOption('Relieved and moving on'),
                _buildRadioOption('Confused and lost'),
                _buildRadioOption('Hopeful but uncertain'),
                _buildRadioOption('Angry and frustrated'),
              ],
            ),

            // Next Button
            Spacer(),
         CustomButton(text: "Next", onPressed: () {

           Get.to(Question4());

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
