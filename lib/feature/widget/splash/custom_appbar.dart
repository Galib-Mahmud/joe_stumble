import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Widget? title;
  final bool centerTitle;
  final double elevation;


  const CustomAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.centerTitle = true,
    this.elevation = 0,
    this.title,

  });

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      automaticallyImplyLeading: false, // 🚀 prevents default back button
      title: title ??
          Image.asset(
            'assets/images/splash/Stumble 2.png',
            height: 80.h,
            width: 170.w,
          ),

    );
  }

  // Required when implementing PreferredSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
