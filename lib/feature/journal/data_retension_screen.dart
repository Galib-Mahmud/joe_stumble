import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

class DataRetentionDeletionPolicyScreen extends StatelessWidget {
  const DataRetentionDeletionPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Data Retention & Deletion\n               Policy",onBack: () {
        Navigator.pop(context);
      },
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _Section(
              title: "Retention",
              content:
              "• Account data kept while you are active.\n"
                  "• Inactive accounts may be archived after 12 months.\n"
                  "• Aggregated, anonymized insights may be retained for research/analytics.",
            ),
            _Section(
              title: "Deletion",
              content:
              "• You may request deletion at any time (in-app or via support).\n"
                  "• Deletion = removal of journal entries, posts, DMs, and account info within 30 days.\n"
                  "• Backups may persist for up to 90 days before permanent erasure.",
            ),
            _Section(
              title: "Export",
              content:
              "• Users may download a copy of their personal data before deletion.",
            ),
            SizedBox(height: 16),
            Text(
              "Stumble is not a substitute for therapy or medical advice.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "If you are in crisis, use the Support Button for resources — or call:",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "• U.S. & Canada: 988 Suicide & Crisis Lifeline\n"
                  "• UK & Ireland: Samaritans at 116 123\n"
                  "• Elsewhere: See findahelpline.com for local hotlines",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                height: 1.4,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Stumble is a peer-support and wellness tool only.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
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
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}