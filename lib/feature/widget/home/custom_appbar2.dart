import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final Color backButtonColor;

  final String? actionIcon; // ✅ image asset path
  final VoidCallback? onAction;

  const CustomAppBar2({
    super.key,
    required this.title,
    this.onBack,
    this.backButtonColor = Colors.black,
    this.actionIcon,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.sp, // ✅ responsive font
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: onBack != null
          ? Padding(
        padding: EdgeInsets.all(8.w),
        child: Container(
          decoration: BoxDecoration(
            color: backButtonColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 18.sp, // ✅ responsive icon size
            ),
            onPressed: onBack ?? () => Navigator.pop(context),
          ),
        ),
      )
          : null,
      actions: [
        if (actionIcon != null)
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: GestureDetector(
              onTap: onAction,
              child: Image.asset(
                actionIcon!,
                height: 24.h,
                width: 24.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
