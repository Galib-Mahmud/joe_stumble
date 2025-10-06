// lib/screens/question4.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/select_avatar_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/splash/custom_button.dart'; // Import CustomButton widget

class Question4 extends StatefulWidget {
  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  String? _selectedOption;

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
            // Progress Bar (80% completion for Question 4/5)
            LinearProgressIndicator(
              value: 0.8, // Represents progress (question 4/5)
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
            SizedBox(height: 20.h),
            // Question Text
            Text(
              'Question 4/5',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'How much do you feel that you are healing emotionally?',
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
                _buildRadioOption('I’m healing really well, I feel stronger'),
                _buildRadioOption('I feel okay, but there are ups and downs'),
                _buildRadioOption('I’m still struggling a lot'),
                _buildRadioOption('I’m completely overwhelmed and lost'),
              ],
            ),

          SizedBox(height: 100.h),
           CustomButton(text: 'Next', onPressed: () {

             Get.toNamed(RouteName.question5);

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
