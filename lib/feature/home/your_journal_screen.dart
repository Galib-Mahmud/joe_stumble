import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/my_journal_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import '../widget/home/custom_nav_bar.dart';

class YourJurnalScreen extends StatelessWidget {
  const YourJurnalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(title: "Your Jurnals", actionIcon: Icons.menu),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home/Jurnal.png"), // background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: 4, // Example count
          itemBuilder: (context, index) {
            // Get.to(MyJournalScreen());

            return _buildJournalCard(
              title: "My statement",
              message: "Hey, I want to die today. I cannot take this stress.",
              time: "12:45 PM",
            );
          },
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }

  Widget _buildJournalCard({
    required String title,
    required String message,
    required String time,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side (title + message)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // Right side (time)
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
