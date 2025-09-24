import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomNavBar extends StatefulWidget {
  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;

  // List of pages for each tab (optional, replace with your actual pages)
  final List<Widget> _pages = [
    Container(color: Colors.blue), // Orbit
    Container(color: Colors.green), // Journal
    Container(color: Colors.yellow), // SOS
    Container(color: Colors.purple), // Tribe Chat
    Container(color: Colors.orange), // Home Dashboard
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the current page based on index
      bottomNavigationBar: Flexible(
        child: CurvedNavigationBar(
          index: _currentIndex,
          height: 70, // Height of the entire navigation bar
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.orange,
          color: Colors.black, // Color of the navigation bar
          items: <Widget>[
            // Orbit Icon with Text below
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.apps, size: 30, color: Colors.white), // Orbit Icon
                Text('Orbit', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            // Journal Icon with Text below
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.book, size: 30, color: Colors.white), // Journal Icon
                Text('Journal', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            // SOS Button with custom styling
            Container(
              width: MediaQuery.of(context).size.width * 0.15, // 15% of the screen width
              height: MediaQuery.of(context).size.width * 0.15, // Equal width and height for a circle
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE35D24), // SOS button background color
              ),
              child: Center(
                child: Text(
                  'SOS', // SOS text inside the circle
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22, // Increase font size for better visibility
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Tribe Chat Icon with Text below
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat, size: 30, color: Colors.white), // Tribe Chat Icon
                Text('Chat', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            // Home Dashboard Icon with Text below
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings, size: 30, color: Colors.white), // Home Dashboard Icon
                Text('Dashboard', style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
