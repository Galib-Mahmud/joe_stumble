import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil package
import 'package:joe_stumble/feature/home/app_navigation.dart';
import 'package:joe_stumble/feature/home/my_journal_screen.dart';
import 'package:joe_stumble/feature/journal/my_jurnal_screen1.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import '../journal/journals_app_bar.dart';

class YourJurnalScreen extends StatelessWidget {
  const YourJurnalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: JournalsAppBar(
        backgroundColor: Colors.transparent,
        showBackButton: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home/Jurnal.jpg"), // Background image
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.all(16.w), // Use ScreenUtil for padding
          itemCount: 4, // Example count
          itemBuilder: (context, index) {
            return _buildJournalCard(
              title: "My statement",
              message: "Hey, I want to die today. I cannot take this stress.",
              time: "12:45 PM",
              onTap: () {
                AppNavigation.push(context, MyJournalsScreen1());
                // Get.to(MyJournalScreen());
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildJournalCard({
    required String title,
    required String message,
    required String time,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h), // Use ScreenUtil for margin
        padding: EdgeInsets.all(12.w), // Use ScreenUtil for padding
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r), // Use ScreenUtil for border radius
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4.r, // Use ScreenUtil for blur radius
              offset: Offset(0, 2.h), // Use ScreenUtil for offsets
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
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp, // Use ScreenUtil for font size
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4.h), // Use ScreenUtil for spacing
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 14.sp, // Use ScreenUtil for font size
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
              style: TextStyle(
                fontSize: 12.sp, // Use ScreenUtil for font size
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}