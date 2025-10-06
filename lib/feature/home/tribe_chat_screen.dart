import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TribeChatScreen extends StatefulWidget {
  const TribeChatScreen({super.key});

  @override
  _TribeChatScreenState createState() => _TribeChatScreenState();
}

class _TribeChatScreenState extends State<TribeChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  List<Map<String, String>> messages = [
    {
      "name": "Joe Bot",
      "message": "I don't know how to keep going anymore. Everything feels like it's falling apart.👍💔",
      "time": "9:09 PM",
      "type": "received"
    },
    {
      "name": "Ethan",
      "message": "I feel that too.👋 It's like I'm just stuck in this endless loop of exhaustion. Nothing seems to make it better.",
      "time": "9:09 PM",
      "type": "sent"
    },
    // Add more messages...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tribe Chat room\n 4622 Online ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16.sp,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.arrow_circle_right_outlined, color: Colors.black, size: 28.sp),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/home/tribe.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Fixed bot avatars
          Positioned(
            top: kToolbarHeight + 70.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: index < 3 ? 20.w : 0),
                  child: _buildBotAvatar("assets/images/home/Joe.jpg", "Joe Bot\nGrounding"),
                );
              }),
            ),
          ),

          // Messages
          Padding(
            padding: EdgeInsets.only(top: 120.h, bottom: 70.h),
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                var message = messages[index];
                bool isSent = message['type'] == 'sent';

                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
                  child: Align(
                    alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 14.w),
                      decoration: BoxDecoration(
                        color: isSent ? Colors.orangeAccent : Colors.grey[800],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                          bottomLeft: isSent ? Radius.circular(16.r) : Radius.circular(0),
                          bottomRight: isSent ? Radius.circular(0) : Radius.circular(16.r),
                        ),
                      ),
                      constraints: BoxConstraints(maxWidth: 260.w),
                      child: Text(
                        message['message']!,
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Input area
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(8.w),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, -2)),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Type a Message',
                        hintStyle: TextStyle(fontSize: 14.sp),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.orangeAccent, size: 24.sp),
                    onPressed: () {
                      if (_messageController.text.isNotEmpty) {
                        setState(() {
                          messages.insert(0, {
                            'name': 'Ethan',
                            'message': _messageController.text,
                            'time': '9:09 PM',
                            'type': 'sent',
                          });
                          _messageController.clear();
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBotAvatar(String imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35.r,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 4.h),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 12.sp),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
