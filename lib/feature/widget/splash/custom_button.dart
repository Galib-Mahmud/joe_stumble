// lib/widget/splash/custom_button.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFinishButton;

  CustomButton({
    required this.text,
    required this.onPressed,
    this.isFinishButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18.sp, // Scaled font size
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: isFinishButton ? Colors.orange : Colors.orange,
        fixedSize: Size(345.w, 51.h),
        padding: EdgeInsets.symmetric(
          vertical: 12.h, // Scaled vertical padding
          horizontal: 40.w, // Scaled horizontal padding
        ),
        // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Rounded corners
        ),
      ),
    );
  }
}
