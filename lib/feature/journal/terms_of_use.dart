import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

import '../widget/home/custom_appbar2.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// ✅ Use your custom app bar
      appBar: CustomAppBar2(title: "Terms of Use", actionIcon: Icons.chat),

      /// ✅ Use your custom nav bar with SOS
      bottomNavigationBar:  CustomNavBar(),

      /// ✅ Scrollable Terms body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _Section(
              number: "1",
              title: "Who We Are",
              content:
              "Stumble is a safe space for people navigating breakups. "
                  "We are not a dating app and not a therapy service.",
            ),
            _Section(
              number: "2",
              title: "Eligibility",
              content:
              "• You must be 18+ to use Stumble.\n"
                  "• You may not create multiple accounts to mislead or impersonate.",
            ),
            _Section(
              number: "3",
              title: "Your Use of Stumble",
              content:
              "• You are responsible for what you share.\n"
                  "• Respect our Community Guidelines (no harassment, hate, or unsafe behavior).\n"
                  "• Do not misuse Stumble (spam, abuse, illegal activity).",
            ),
            _Section(
              number: "4",
              title: "Content & Licensing",
              content:
              "• You own the content you create.\n"
                  "• By posting, you grant Stumble a limited license to display it inside the platform.\n"
                  "• We don’t sell your personal content.",
            ),
            _Section(
              number: "5",
              title: "Safety & Support",
              content:
              "• Messaging requires mutual consent.\n"
                  "• Our Support Button is not a crisis hotline. For emergencies, call 911 (U.S.) or your local emergency number.",
            ),
            _Section(
              number: "6",
              title: "Termination",
              content:
              "We may suspend or terminate accounts that violate these terms.",
            ),
            _Section(
              number: "7",
              title: "Changes",
              content:
              "We may update these Terms. We’ll notify you before changes take effect.",
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
  final String number;
  final String title;
  final String content;

  const _Section({
    required this.number,
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
            "$number. $title",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            content,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
