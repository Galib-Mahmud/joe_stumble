import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
            debugPrint("Orbit tapped");
            break;
          case 1:
            debugPrint("Journal tapped");
            break;
          case 2:
            debugPrint("SOS tapped");
            break;
          case 3:
            debugPrint("Chat tapped");
            break;
          case 4:
            debugPrint("Dashboard tapped");
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
