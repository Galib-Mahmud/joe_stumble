import 'package:flutter/material.dart';

import '../widget/home/custom_appbar2.dart';
import '../widget/home/custom_nav_bar.dart';

class MySavedPostsScreen extends StatefulWidget {
  @override
  _MySavedPostsScreenState createState() => _MySavedPostsScreenState();
}

class _MySavedPostsScreenState extends State<MySavedPostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "My Saved Posts",
        onBack: () => Navigator.pop(context),
        backButtonColor: Colors.black,
        actionIcon: Icons.star, // Star icon as in screenshot
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home/Depressed.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildPostCard(
              imageUrl: 'assets/images/orbit/orbit1.jpg',
              text: "You are stronger than you think, even when you feel weak.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/orbit/orbit2.jpg',
              text: "You are worthy of love, care, and hope - always, no matter what.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/orbit/orbit3.jpg',
              text: "You are not alone in this, even in darkness. There is a spark waiting to shine.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/orbit/orbit4.jpg',
              text: "You are stronger than you think, even when you feel weak.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/orbit/orbit5.jpg',
              text: "Dark times teach us to appreciate the light. Hold on; better days are coming.",
              isLast: true,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }

  Widget _buildPostCard({required String imageUrl, required String text, bool isLast = false}) {
    return Card(
      margin: EdgeInsets.only(bottom: isLast ? 0 : 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(imageUrl,height: 250,width: 164, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Icon(Icons.star, color: Colors.yellow, size: 24),
        ],
      ),
    );
  }

  void _showSOSDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("SOS"),
        content: Text("Emergency help is on the way. Please stay calm and seek assistance immediately."),
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