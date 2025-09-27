import 'package:flutter/material.dart';

import '../widget/home/custom_appbar2.dart';
import '../widget/home/custom_nav_bar.dart';

class OrbitScreen extends StatefulWidget {
  @override
  _OrbitScreenState createState() => _OrbitScreenState();
}

class _OrbitScreenState extends State<OrbitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "Orbit",
        onBack: () {
          Navigator.pop(context);
        },
        backButtonColor: Colors.black,
        actionIcon: "assets/images/avatar/star.png",onAction: () {

      },  // Star icon as in screenshot
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
              imageUrl: 'assets/images/avatar/orbit1.png',
              text: "You are stronger than you think, even when you feel weak.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/avatar/orbit1.png',
              text: "You are worthy of love, care, and hope - always, no matter what.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/avatar/orbit1.png',
              text: "You are not alone in this, even in darkness. There is a spark waiting to shine.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/avatar/orbit1.png',
              text: "You are stronger than you think, even when you feel weak.",
            ),
            _buildPostCard(
              imageUrl: 'assets/images/avatar/orbit1.png',
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
          Image.asset(imageUrl,height: 250,width: 165, fit: BoxFit.cover),
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