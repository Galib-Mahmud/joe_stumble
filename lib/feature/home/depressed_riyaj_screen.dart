

import 'package:flutter/material.dart';

import '../widget/home/custom_nav_bar.dart';
import '../widget/splash/custom_appbar.dart';

class DepressedScreen extends StatefulWidget {
  @override
  State<DepressedScreen> createState() => _DepressedScreenState();
}

class _DepressedScreenState extends State<DepressedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(), // Your custom app bar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home/Depressed.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ChatBubble(
                    text: "It's hard. But you know talking about it helps a little. I'm here if you need someone to listen.",
                    isSent: false,
                  ),
                  ChatBubble(
                    text: "Thanks Ethan. It means more than you know.",
                    isSent: true,
                  ),
                  ChatBubble(
                    text: "It's hard. But you know talking about it helps a little. I'm here if you need someone to listen.",
                    isSent: false,
                  ),
                  ChatBubble(
                    text: "Thanks Ethan. It means more than you know.",
                    isSent: true,
                  ),
                ],
              ),
            ),
            CustomNavBar(), // Your custom nav bar
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSent;

  ChatBubble({required this.text, required this.isSent});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSent ? Colors.orange : Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}