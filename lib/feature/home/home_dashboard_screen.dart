import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/dashboard_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../widget/home/custom_nav_bar.dart';

class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({super.key});

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  final String userName = "Galib Mahmud"; // Replace with dynamic name from backend

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(), // ✅ fixed appbar
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Padding for the body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/home/avatar.jpg',
                  ), // Replace with actual profile picture
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child:  Text(

                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      userName, // dynamic username
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40), // Space after profile section
            // Buttons (Tribe, Content Path, Journal, Support)
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildButtonWithImage('Tribe', 'assets/images/home/pic1.png', '/tribe'),
                  _buildButtonWithImage('Content Path', 'assets/images/home/pic2.png', '/contentPath'),
                  _buildButtonWithImage('Journal', 'assets/images/home/pic3.png', '/journal'),
                  _buildButtonWithImage('Support', 'assets/images/home/pic4.png', '/support'),
                ],
              ),
            ),

            const SizedBox(height: 20), // Space before mood check-in section
            // Mood Check-in Section (Emojis)

            const SizedBox(height: 12),
            Card(
              shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange ),borderRadius: BorderRadius.circular(10)

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 20),
                child: Column(

                  children: [

                    Center(
                      child: Text(
                        'Mood Check-in',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        '😢',
                        '😞',
                        '🙂',
                        '😁',
                        '😁',
                      ].map((emoji) => _buildMoodEmoji(emoji)).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

      ),

      bottomNavigationBar: CustomNavBar(), // Custom navigation bar
    );
  }

  Widget _buildButtonWithImage(String label, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteName.dashboard);

      },
      child: Container(
        width: 164,
        height: 118,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 248, 239, 1), // ✅ fixed
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black, // ✅ visible on light background
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),

    );
  }


  // Utility method to create mood emojis with tap interaction
  Widget _buildMoodEmoji(String emoji) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          debugPrint("Mood selected: $emoji"); // Replace with API call
        },
        child: Text(emoji, style: const TextStyle(fontSize: 40)),
      ),
    );
  }
}
