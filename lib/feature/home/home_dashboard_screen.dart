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
  final String userName = "Galib"; // Replace with dynamic name from backend

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
                    'assets/images/avatar/avatar4.png',
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
              padding: const EdgeInsets.all(18.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  _buildButton('Tribe', Icons.group, '/tribe'),
                  _buildButton(
                    'Content Path',
                    Icons.arrow_forward,
                    '/contentPath',
                  ),
                  _buildButton('Journal', Icons.book, '/journal'),
                  _buildButton('Support', Icons.help_outline, '/support'),
                ],
              ),
            ),
            const SizedBox(height: 40), // Space before mood check-in section
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

  // Utility method to create a button with ripple effect
  Widget _buildButton(String label, IconData icon, String route) {
    return InkWell(
      onTap: () {
       Get.toNamed(RouteName.dashboard);
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4, // responsive width
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 234, 229),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.deepOrangeAccent),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16,
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
