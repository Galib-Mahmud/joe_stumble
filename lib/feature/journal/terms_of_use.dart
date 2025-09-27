import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Terms of Use",onBack: () {
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
            Section(
              number: "1",
              title: "Who We Are",
              content:
              "Stumble is a safe space for people navigating breakups. "
                  "We are not a dating app and not a therapy service.",
            ),
            Section(
              number: "2",
              title: "Eligibility",
              content:
              "• You must be 18+ to use Stumble.\n"
                  "• You may not create multiple accounts to mislead or impersonate.",
            ),
            Section(
              number: "3",
              title: "Your Use of Stumble",
              content:
              "• You are responsible for what you share.\n"
                  "• Respect our Community Guidelines (no harassment, hate, or unsafe behavior).\n"
                  "• Do not misuse Stumble (spam, abuse, illegal activity).",
            ),
            Section(
              number: "4",
              title: "Content & Licensing",
              content:
              "• You own the content you create.\n"
                  "• By posting, you grant Stumble a limited license to display it inside the platform.\n"
                  "• We don’t sell your personal content.",
            ),
            Section(
              number: "5",
              title: "Safety & Support",
              content:
              "• Messaging requires mutual consent.\n"
                  "• Our Support Button is not a crisis hotline. For emergencies, call 911 (U.S.) or your local emergency number.",
            ),
            Section(
              number: "6",
              title: "Termination",
              content:
              "We may suspend or terminate accounts that violate these terms.",
            ),
            Section(
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
class Section extends StatelessWidget {
  final String number;
  final String title;
  final String content;

  const Section({
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