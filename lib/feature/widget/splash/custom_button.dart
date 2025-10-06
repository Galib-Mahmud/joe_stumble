import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFinishButton;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isFinishButton = false,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        borderRadius: BorderRadius.circular(30.r),
        child: Ink(
          width: width?.w, // Optional responsive width
          height: height?.h ?? 50.h, // Default responsive height
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color.fromRGBO(227, 93, 36, 1),
                Color.fromRGBO(232, 135, 32, 1),
                Color.fromRGBO(241, 172, 25, 1),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
