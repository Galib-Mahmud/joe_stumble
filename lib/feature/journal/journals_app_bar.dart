import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/app_navigation.dart';
import '../home/my_journal_screen.dart';

class JournalsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? backgroundColor;
  final bool useGradient;
  final bool showBackButton;

  const JournalsAppBar({
    Key? key,
    this.backgroundColor,
    this.useGradient = false,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return AppBar(
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      flexibleSpace: useGradient
          ? Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      )
          : null,
      leading: showBackButton
          ? Container(
        margin: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1.w,
          ),
        ),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 24.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      )
          : null,
      title: Text(
        'Your Journals',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5.sp,
        ),
      ),
      centerTitle: true,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 16.w),
          child: TextButton.icon(
            onPressed: () {
              AppNavigation.push(context, MyJournalScreen());
            },
            icon: Icon(
              Icons.add,
              color: Colors.black,
              size: 20.sp,
            ),
            label: Text(
              'New',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.h);
}
