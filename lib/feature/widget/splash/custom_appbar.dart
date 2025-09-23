import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final Widget? title;
  final bool centerTitle;
  final double elevation;
  final bool showBackButton; // New parameter to control back button visibility

  const CustomAppBar({
    super.key,
    this.backgroundColor = Colors.white,
    this.centerTitle = true,
    this.elevation = 0,
    this.title,
    this.showBackButton = true, // Default to true to show the back button
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      elevation: elevation,
      title: title ??
          Image.asset(
            'assets/images/splash/Stumble 2.png',
            height: 30.h,
            width: 115.w,
          ),
      leading: showBackButton
          ? IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black), // Back button
        onPressed: () {
          Navigator.of(context).pop(); // Goes back to the previous screen
        },
      )
          : null, // If showBackButton is false, no back button is displayed
    );
  }

  // Required when implementing PreferredSizeWidget
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
