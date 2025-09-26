import 'package:flutter/material.dart';

import '../widget/home/custom_appbar2.dart';
import '../widget/home/custom_nav_bar.dart';

class MyVideosScreen extends StatefulWidget {
  @override
  _MyVideosScreenState createState() => _MyVideosScreenState();
}

class _MyVideosScreenState extends State<MyVideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "My Videos",
        onBack: () => Navigator.pop(context),
        backButtonColor: Colors.black,
        actionIcon: Icons.menu, // Menu icon as in screenshot
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildVideoCard(
            imageUrl: 'assets/images/avatar/myvedio.jpg',
            duration: '03:05',
          ),
          _buildVideoCard(
            imageUrl: 'assets/images/avatar/myvedio.jpg',

            duration: '03:05',
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }

  Widget _buildVideoCard({required String imageUrl, required String duration}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imageUrl, fit: BoxFit.cover, width: 345, height: 180),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                duration,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showSOSDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("SOS"),
        content: Text(
          "Emergency help is on the way. Please stay calm and seek assistance immediately.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }
}
