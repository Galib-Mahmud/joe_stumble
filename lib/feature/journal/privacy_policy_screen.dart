import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Privacy Policy",
        onBack: () {
          Navigator.pop(context);
        },
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "We respect your privacy.",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.h),
            Section(
              title: "What We Collect",
              content:
              "• Basic account info (email, age range, avatar).\n"
                  "• Optional mood logs, journal entries, content preferences.\n"
                  "• Device + usage data (for performance & safety).",
            ),
            Section(
              title: "How We Use It",
              content:
              "• To personalize your experience (e.g., mood-based content).\n"
                  "• To keep the community safe (moderation + fraud prevention).\n"
                  "• To improve Stumble (analytics, bug fixes).",
            ),
            Section(
              title: "What We Don’t Do",
              content:
              "• We do not sell personal data.\n"
                  "• We do not share identifiable info without consent.",
            ),
            Section(
              title: "Sharing",
              content:
              "• Anonymized insights may be shared with partners (opt-in only).\n"
                  "• Third-party vendors (hosting, analytics) must follow strict data security rules.",
            ),
            Section(
              title: "Your Rights",
              content:
              "• Download your data.\n"
                  "• Delete your data anytime.\n"
                  "• Control notifications + preferences.",
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}

/// ✅ Section Widget (for reusability)
class Section extends StatelessWidget {
  final String title;
  final String content;

  const Section({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            content,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
