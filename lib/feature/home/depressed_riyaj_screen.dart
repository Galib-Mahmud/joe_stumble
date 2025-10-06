import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/home/custom_appbar2.dart';

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
        onBack: () => Navigator.pop(context),
        backButtonColor: Colors.black,
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/home/Depressed.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(10.w),
                  children: [
                    ChatBubble(
                      text:
                      "It's hard. But you know, talking about it helps a little. I'm here if you need someone to listen.",
                      isSent: false,
                      avatarUrl: 'assets/images/avatar/avatar1.png',
                    ),
                    ChatBubble(
                      text: "Thanks Ethan. It means more than you know.",
                      isSent: true,
                      avatarUrl: 'assets/images/avatar/avatar2.png',
                    ),
                    ChatBubble(
                      text:
                      "It's hard. But you know, talking about it helps a little. I'm here if you need someone to listen.",
                      isSent: false,
                      avatarUrl: 'assets/images/avatar/avatar1.png',
                    ),
                    ChatBubble(
                      text: "Thanks Ethan. It means more than you know.",
                      isSent: true,
                      avatarUrl: 'assets/images/avatar/avatar2.png',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: TextField(
                          controller: _messageController,
                          style: TextStyle(fontSize: 14.sp),
                          decoration: InputDecoration(
                            hintText: 'Type a Message',
                            hintStyle: TextStyle(fontSize: 14.sp),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 10.h),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: Icon(Icons.send,
                            color: Colors.white, size: 18.sp),
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
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSent;
  final String avatarUrl;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isSent,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isSent)
          CircleAvatar(
            radius: 15.r,
            backgroundImage: AssetImage(avatarUrl),
          ),
        SizedBox(width: isSent ? 0 : 8.w),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: isSent ? Colors.orange : Colors.blue,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
          ),
        ),
        SizedBox(width: isSent ? 8.w : 0),
        if (isSent)
          CircleAvatar(
            radius: 15.r,
            backgroundImage: AssetImage(avatarUrl),
          ),
      ],
    );
  }
}
