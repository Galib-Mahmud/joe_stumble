import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/home/app_navigation.dart';
import 'package:joe_stumble/feature/home/dashboard_screen.dart';
import 'package:joe_stumble/feature/home/my_journal_screen.dart';
import 'package:joe_stumble/feature/home/profile_screen.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import '../journal/my_vedio.dart';
import '../journal/settings_screen.dart';
import '../journal/support_screen.dart';

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
      appBar: AppBar(
        title: Text("Home", style: TextStyle(fontSize: 18.sp)),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/splash/Stumble 2.png',
                        height: 20.h,
                        fit: BoxFit.contain,
                      ),

                      Image.asset(
                        'assets/images/avatar/avatar4.png',
                        height: 40.h,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Daniel Jones',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Founder Badges',
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.white, size: 22.sp),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            _buildDrawerTile(Icons.account_circle, "My Account", () {
              AppNavigation.push(context, ProfileScreen());
            }),
            _buildDrawerTile(Icons.video_library, "My Videos", () {
              AppNavigation.push(context, MyVideosScreen());
            }),
            _buildDrawerTile(Icons.dashboard, "Dashboard", () {
              AppNavigation.push(context,  DashboardScreen());
            }),
            _buildDrawerTile(Icons.settings, "Settings", () {
              AppNavigation.push(context, SettingsScreen());
            }),
            _buildDrawerTile(Icons.logout, "Log Out", () {}),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ✅ Profile Section
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundImage: const AssetImage('assets/images/home/avatar.jpg'),
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      "Welcome Back",
                      style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      userName,
                      style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),

              // ✅ Grid Buttons
              Padding(
                padding: EdgeInsets.all(20.w),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 1.5,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildButtonWithImage(
                      'Tribe',
                      'assets/images/home/pic1.png',
                          () => AppNavigation.push(context, const TribeChatScreen()),
                    ),
                    _buildButtonWithImage(
                      'Content Path',
                      'assets/images/home/pic2.png',
                          () {}, // navigate later
                    ),
                    _buildButtonWithImage(
                      'Journal',
                      'assets/images/home/pic3.png',
                          () => AppNavigation.push(context, const MyJournalScreen()),
                    ),
                    _buildButtonWithImage(
                      'Support',
                      'assets/images/home/pic4.png',
                          () => AppNavigation.push(context, const SupportScreen()),
                    ),
                  ],
                ),
              ),

              // ✅ Mood Check-in Section
              Card(
                shape: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.orange),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      Text(
                        'Mood Check-in',
                        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: ['😢', '😞', '🙂', '😁']
                            .map((emoji) => _buildMoodEmoji(emoji))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Drawer Item
  Widget _buildDrawerTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, size: 22.sp),
      title: Text(title, style: TextStyle(fontSize: 14.sp)),
      onTap: onTap,
    );
  }

  // Grid Button
  Widget _buildButtonWithImage(String label, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 164.w,
        height: 118.h,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 248, 239, 1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 40.w, height: 40.h, fit: BoxFit.contain),
            SizedBox(height: 10.h),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Emoji widget
  Widget _buildMoodEmoji(String emoji) {
    return InkWell(
      onTap: () => debugPrint("Mood selected: $emoji"),
      child: Text(emoji, style: TextStyle(fontSize: 36.sp)),
    );
  }
}
