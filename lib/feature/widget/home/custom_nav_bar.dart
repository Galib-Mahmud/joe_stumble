import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/route/route_name.dart';

import '../../home/app_navigation.dart';
import '../../home/dashboard_screen.dart';
import '../../home/home_dashboard_screen.dart';
import '../../home/my_journal_screen.dart';
import '../../journal/orbit_screen.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: _currentIndex,
      height: 70,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });

        // Example: handle navigation
        switch (index) {
          case 0:
            // Get.toNamed(RouteName.homeDashBoard);
            AppNavigation.push(context, HomeDashboardScreen());
            break;
          case 1:
          // Get.toNamed(RouteName.myJurnal);
          AppNavigation.push(context, MyJournalScreen());
            break;
          case 2:
           // Get.toNamed(RouteName.orbit);
           AppNavigation.push(context, OrbitScreen());
            break;
          case 3:
         // Get.toNamed(RouteName.tribute);
         AppNavigation.push(context,TribeChatScreen());
            break;
          case 4:
         // Get.toNamed(RouteName.dashboard);
         AppNavigation.push(context,DashboardScreen());
            break;
        }
      },
      backgroundColor: Colors.white,
      color: Colors.black,
      buttonBackgroundColor: Colors.black,
      items: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.apps, size: 30, color: Colors.white),
            Text('Orbit', style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.book, size: 30, color: Colors.white),
            Text('Journal', style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.width * 0.15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFE35D24),
          ),
          child: const Center(
            child: Text(
              'SOS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chat, size: 30, color: Colors.white),
            Text('Chat', style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.settings, size: 30, color: Colors.white),
            Text('Dashboard',
                style: TextStyle(color: Colors.white, fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
