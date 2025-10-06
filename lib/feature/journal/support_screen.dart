import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/journal/ex_block_screen.dart';
import 'package:joe_stumble/feature/journal/set_your_pin_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import '../home/app_navigation.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Choose the support you need",
        onBack: () => Navigator.pop(context),
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Image.asset(
                  'assets/images/community/record.png',
                  width: 150.w,
                  height: 50.h,
                  fit: BoxFit.contain,
                ),
              ]),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Record a grounding\n    Message",
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                ]),
              ),
              Center(
                child: Image.asset(
                  'assets/images/community/support.png',
                  width: 200.w,
                  height: 200.h,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Support Modes",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _SupportModeButton(
                      icon: Icons.warning_amber_rounded,
                      label: "Gentle",
                      iconColor: Colors.yellow[700]!,
                    ),
                    _SupportModeButton(
                      icon: Icons.warning_amber_rounded,
                      label: "Critical",
                      iconColor: Colors.orange,
                    ),
                    _SupportModeButton(
                      icon: Icons.warning_amber_rounded,
                      label: "Urgent",
                      iconColor: Colors.deepOrangeAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  "Additional Tools",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _AdditionalToolButton(
                      icon: Icons.lock,
                      label: "Set up PIN Lock",
                      onTap: () => AppNavigation.push(context, SetYourPinScreen()),
                    ),
                    _AdditionalToolButton(
                      icon: Icons.block,
                      label: "Ex Block",
                      onTap: () => AppNavigation.push(context, ExBlockScreen()),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _SupportModeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color iconColor;

  const _SupportModeButton({
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 70.h,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 248, 239, 1),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(
            icon,
            size: 40.sp,
            color: iconColor,
          ),
        ),
        SizedBox(height: 8.h),
        Text(
          label,
          style: TextStyle(fontSize: 14.sp, color: Colors.blueGrey),
        ),
      ],
    );
  }
}

class _AdditionalToolButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _AdditionalToolButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(
          minWidth: 100.w,
          maxWidth: 180.w,
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            Icon(icon, size: 24.sp, color: Colors.black),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14.sp, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
