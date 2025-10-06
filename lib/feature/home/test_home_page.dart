import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/feature/home/your_journal_screen.dart';
import 'package:joe_stumble/feature/journal/my_jurnal_screen1.dart';

import '../../core/widget/bottom_navigation/custom_bottom_navigation_bar.dart';
import '../journal/orbit_screen.dart';
import '../journal/support_screen.dart';
import 'dashboard_screen.dart';
import 'home_dashboard_screen.dart';
import 'my_journal_screen.dart';

class TestHomeScreen extends StatefulWidget {
  const TestHomeScreen({super.key});
  @override
  State<TestHomeScreen> createState() => _TestHomeScreenState();
}

class _TestHomeScreenState extends State<TestHomeScreen> {
  int currentIndex = 0;
  int lastTapTime = 0; // For double-tap detection

  // Global keys for each tab's navigator (now 5 navigators)
  final orbitNavKey = GlobalKey<NavigatorState>();
  final journalNavKey = GlobalKey<NavigatorState>();
  final sosNavKey = GlobalKey<NavigatorState>();
  final tribeChatNavKey = GlobalKey<NavigatorState>();
  final homeDashboardNavKey = GlobalKey<NavigatorState>();

  void onTabSelected(int index) {
    final currentTime = DateTime.now().millisecondsSinceEpoch;

    // Double-tap detection: If the same tab is tapped twice in quick succession
    if (index == currentIndex && currentTime - lastTapTime < 500) {
      // If double-tapped on the same tab, pop all the routes and go back to the first screen of the tab
      switch (index) {
        case 0:
          orbitNavKey.currentState?.popUntil((route) => route.isFirst);
          break;
        case 1:
          journalNavKey.currentState?.popUntil((route) => route.isFirst);
          break;
        case 2:
          sosNavKey.currentState?.popUntil((route) => route.isFirst);
          break;
        case 3:
          tribeChatNavKey.currentState?.popUntil((route) => route.isFirst);
          break;
        case 4:
          homeDashboardNavKey.currentState?.popUntil((route) => route.isFirst);
          break;
      }
    } else {
      setState(() {
        currentIndex = index;
      });
    }

    lastTapTime = currentTime;
  }

  @override
  Widget build(BuildContext context) {
    // Screens corresponding to each tab (reordered to match navigation bar)
    final screens = [
      HomeDashboardScreen(),   // Index 4 - Home Dashboard
      YourJurnalScreen(),
      SupportScreen(),           // Index 0 - Orbit
      TribeChatScreen(),
      OrbitScreen(),

      // Index 3 - Tribe Chat
      // DashboardScreen(),   // Index 4 - Home Dashboard
    ];

    return Scaffold(
      backgroundColor: Colors.grey,
      extendBody: true,
      body: WillPopScope(
        onWillPop: () async {
          // Handle back navigation for each tab
          switch (currentIndex) {
            case 0:
              if (orbitNavKey.currentState?.canPop() ?? false) {
                orbitNavKey.currentState?.pop();
                return false;
              }
              break;
            case 1:
              if (journalNavKey.currentState?.canPop() ?? false) {
                journalNavKey.currentState?.pop();
                return false;
              }
              break;
            case 2:
              if (sosNavKey.currentState?.canPop() ?? false) {
                sosNavKey.currentState?.pop();
                return false;
              }
              break;
            case 3:
              if (tribeChatNavKey.currentState?.canPop() ?? false) {
                tribeChatNavKey.currentState?.pop();
                return false;
              }
              break;
            case 4:
              if (homeDashboardNavKey.currentState?.canPop() ?? false) {
                homeDashboardNavKey.currentState?.pop();
                return false;
              }
              break;
          }
          return true;
        },
        child: IndexedStack(
          index: currentIndex,
          children: [
            Navigator(
              key: orbitNavKey,
              onGenerateInitialRoutes: (navigator, initialRoute) {
                return [
                  MaterialPageRoute(builder: (context) => screens[0])
                ];
              },
            ),
            Navigator(
              key: journalNavKey,
              onGenerateInitialRoutes: (navigator, initialRoute) {
                return [
                  MaterialPageRoute(builder: (context) => screens[1])
                ];
              },
            ),
            Navigator(
              key: sosNavKey,
              onGenerateInitialRoutes: (navigator, initialRoute) {
                return [
                  MaterialPageRoute(builder: (context) => screens[2])
                ];
              },
            ),
            Navigator(
              key: tribeChatNavKey,
              onGenerateInitialRoutes: (navigator, initialRoute) {
                return [
                  MaterialPageRoute(builder: (context) => screens[3])
                ];
              },
            ),
            Navigator(
              key: homeDashboardNavKey,
              onGenerateInitialRoutes: (navigator, initialRoute) {
                return [
                  MaterialPageRoute(builder: (context) => screens[4])
                ];
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
    );
  }
}

// You'll need to create this SOS screen
class SOSScreen extends StatelessWidget {
  const SOSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOS'),
        backgroundColor: const Color(0xFFE67E22),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.warning,
              size: 100,
              color: Color(0xFFE67E22),
            ),
            SizedBox(height: 20),
            Text(
              'Emergency SOS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Emergency features will be available here',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}