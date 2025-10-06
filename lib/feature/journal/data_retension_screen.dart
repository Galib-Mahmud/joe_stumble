import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';

class DataRetentionDeletionPolicyScreen extends StatelessWidget {
  const DataRetentionDeletionPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Data Retention & Deletion\nPolicy",
        onBack: () {
          Navigator.pop(context);
        },
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w), // Use ScreenUtil for padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _Section(
              title: "Retention",
              content:
              "• Account data kept while you are active.\n"
                  "• Inactive accounts may be archived after 12 months.\n"
                  "• Aggregated, anonymized insights may be retained for research/analytics.",
            ),
            const _Section(
              title: "Deletion",
              content:
              "• You may request deletion at any time (in-app or via support).\n"
                  "• Deletion = removal of journal entries, posts, DMs, and account info within 30 days.\n"
                  "• Backups may persist for up to 90 days before permanent erasure.",
            ),
            const _Section(
              title: "Export",
              content:
              "• Users may download a copy of their personal data before deletion.",
            ),
            SizedBox(height: 16.h), // Adjust spacing with ScreenUtil
            Text(
              "Stumble is not a substitute for therapy or medical advice.",
              style: TextStyle(
                fontSize: 14.sp, // Use ScreenUtil for font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.h), // Adjust spacing with ScreenUtil
            Text(
              "If you are in crisis, use the Support Button for resources — or call:",
              style: TextStyle(
                fontSize: 14.sp, // Use ScreenUtil for font size
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.h), // Adjust spacing with ScreenUtil
            Text(
              "• U.S. & Canada: 988 Suicide & Crisis Lifeline\n"
                  "• UK & Ireland: Samaritans at 116 123\n"
                  "• Elsewhere: See findahelpline.com for local hotlines",
              style: TextStyle(
                fontSize: 14.sp, // Use ScreenUtil for font size
                color: Colors.black,
                height: 1.4, // Line height remains the same
              ),
            ),
            SizedBox(height: 16.h), // Adjust spacing with ScreenUtil
            Text(
              "Stumble is a peer-support and wellness tool only.",
              style: TextStyle(
                fontSize: 14.sp, // Use ScreenUtil for font size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40.h), // Adjust spacing with ScreenUtil
          ],
        ),
      ),
    );
  }
}

/// ✅ Section Widget (for reusability)
class _Section extends StatelessWidget {
  final String title;
  final String content;

  const _Section({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h), // Use ScreenUtil for padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp, // Use ScreenUtil for font size
              color: Colors.black,
            ),
          ),
          SizedBox(height: 6.h), // Adjust spacing with ScreenUtil
          Text(
            content,
            style: TextStyle(
              fontSize: 14.sp, // Use ScreenUtil for font size
              color: Colors.black,
              height: 1.4, // Line height remains consistent
            ),
          ),
        ],
      ),
    );
  }
}