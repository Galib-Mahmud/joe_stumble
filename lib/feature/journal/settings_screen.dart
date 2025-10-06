import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/journal/privacy_policy_screen.dart';
import 'package:joe_stumble/feature/journal/set_your_pin_screen.dart';
import 'package:joe_stumble/feature/journal/terms_of_use.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';

import '../home/app_navigation.dart';
import 'data_retension_screen.dart';
import 'disclaimer_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Settings",
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Others",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            _SettingsItem(
              icon: Icons.lock_outline,
              label: "New Password",
              onTap: () => AppNavigation.push(context, SetYourPinScreen()),
            ),
            _SettingsItem(
              icon: Icons.shield_outlined,
              label: "Terms of Use",
              onTap: () => AppNavigation.push(context, TermsOfUseScreen()),
            ),
            _SettingsItem(
              icon: Icons.lock,
              label: "Privacy Policy",
              onTap: () => AppNavigation.push(context, PrivacyPolicyScreen()),
            ),
            _SettingsItem(
              icon: Icons.info_outline,
              label: "Disclaimers",
              onTap: () => AppNavigation.push(context, DisclaimersScreen()),
            ),
            _SettingsItem(
              icon: Icons.storage,
              label: "Data Retention",
              onTap: () => AppNavigation.push(context, DataRetentionDeletionPolicyScreen()),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Text(
                "Danger Actions",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            _SettingsItem(
              icon: Icons.delete_outline,
              label: "Delete Account",
              onTap: () {},
            ),
            _SettingsItem(
              icon: Icons.logout,
              label: "Log out",
              onTap: () {},
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}

/// ✅ Settings Item Widget
class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const _SettingsItem({
    required this.icon,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.grey[600],
                  size: 20.sp,
                ),
                SizedBox(width: 16.w),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 24.sp,
            ),
          ],
        ),
      ),
    );
  }
}
