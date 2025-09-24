import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import '../widget/home/custom_nav_bar.dart'; // Ensure this points to your CustomNavBar

class HomeDashboardScreen extends StatefulWidget {
  const HomeDashboardScreen({super.key});

  @override
  State<HomeDashboardScreen> createState() => _HomeDashboardScreenState();
}

class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding for the body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/profile_picture.png'), // Replace with actual profile picture
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Your Name', // Replace with user's name dynamically
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40), // Space after profile section

            // Buttons (Tribe, Content Path, Journal, Support)
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              shrinkWrap: true, // To prevent scrolling issues
              childAspectRatio: 1.5, // Adjust the size of the buttons
              children: [
                _buildButton('Tribe', Icons.group),
                _buildButton('Content Path', Icons.arrow_forward),
                _buildButton('Journal', Icons.book),
                _buildButton('Support', Icons.help_outline),
              ],
            ),
            SizedBox(height: 40), // Space before mood check-in section

            // Mood Check-in Section (Emojis)
            Text(
              'Mood Check-in',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildMoodEmoji('😢'),
                _buildMoodEmoji('😞'),
                _buildMoodEmoji('🙂'),
                _buildMoodEmoji('😁'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(), // Custom navigation bar
    );
  }

  // Utility method to create a button
  Widget _buildButton(String label, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Handle button press here (navigate to respective pages)
        print('$label pressed');
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFFB8C00), // Orange background color
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Utility method to create mood emojis
  Widget _buildMoodEmoji(String emoji) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        emoji,
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
