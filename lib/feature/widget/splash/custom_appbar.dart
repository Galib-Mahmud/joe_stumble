import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Widget? title;
  final String? titleText;
  final bool centerTitle;
  final double elevation;
  final bool showBackButton;
  final Widget? action;

  const CustomAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.centerTitle = true,
    this.elevation = 0,
    this.title,
    this.titleText,
    this.showBackButton = false,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      automaticallyImplyLeading: false,
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black, size: 24.sp),
        onPressed: () => Navigator.pop(context),
      )
          : null,
      title: title ??
          (titleText != null
              ? Text(
            titleText!,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          )
              : Image.asset(
            'assets/images/splash/Stumble 2.png',
            height: 80.h,
            width: 170.w,
          )),
      actions: action != null ? [action!] : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h); // Responsive height
}
