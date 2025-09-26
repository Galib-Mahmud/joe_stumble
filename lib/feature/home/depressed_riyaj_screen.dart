import 'package:flutter/material.dart';

import '../widget/home/custom_appbar2.dart';
import '../widget/home/custom_nav_bar.dart';

class DepressedScreen extends StatefulWidget {
  @override
  State<DepressedScreen> createState() => _DepressedScreenState();
}

class _DepressedScreenState extends State<DepressedScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "Depressed Riyaz\nActive",
        onBack: () => Navigator.pop(context), // Back button functionality
        backButtonColor: Colors.black,
        actionIcon: Icons.chat,
      ),
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
                padding: EdgeInsets.all(10),
                children: [
                  ChatBubble(
                    text: "It's hard. But you know, talking about it helps a little. I'm here if you need someone to listen.",
                    isSent: false,
                    avatarUrl: 'assets/images/avatar/avatar1.png', // Replace with actual avatar path
                  ),
                  ChatBubble(
                    text: "Thanks Ethan. It means more than you know.",
                    isSent: true,
                    avatarUrl: 'assets/images/avatar/avatar2.png', // Replace with actual avatar path
                  ),
                  ChatBubble(
                    text: "It's hard. But you know, talking about it helps a little. I'm here if you need someone to listen.",
                    isSent: false,
                    avatarUrl: 'assets/images/avatar/avatar1.png', // Replace with actual avatar path
                  ),
                  ChatBubble(
                    text: "Thanks Ethan. It means more than you know.",
                    isSent: true,
                    avatarUrl: 'assets/images/avatar/avatar2.png', // Replace with actual avatar path
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        controller: _messageController,
                        decoration: InputDecoration(
                          hintText: 'Type a Message',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: () {
                        if (_messageController.text.isNotEmpty) {
                          // Handle sending message logic here
                          _messageController.clear();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSent;
  final String avatarUrl;

  ChatBubble({required this.text, required this.isSent, required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isSent)
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(avatarUrl),
          ),
        SizedBox(width: isSent ? 0 : 8),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSent ? Colors.orange : Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: isSent ? 8 : 0),
        if (isSent)
          CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage(avatarUrl),
          ),
      ],
    );
  }
}