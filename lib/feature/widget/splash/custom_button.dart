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
    return GestureDetector(
      onTap: onPressed, // Handle the button press
      child: Material(
        borderRadius: BorderRadius.circular(30), // Rounded corners
        child: Ink(
          padding: EdgeInsets.symmetric(
            vertical: 12.h, // Scaled vertical padding
            horizontal: 40.w, // Scaled horizontal padding
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(227, 93, 36, 1), // First color (dark orange)
                Color.fromRGBO(232, 135, 32, 1), // Second color (lighter orange)
                Color.fromRGBO(241, 172, 25, 1), // Third color (yellow)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30), // Rounded corners for gradient
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.sp, // Scaled font size
                color: Colors.white, // White text color
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
