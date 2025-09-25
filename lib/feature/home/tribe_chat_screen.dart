import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/journal_screen.dart';

class TribeChatScreen extends StatefulWidget {
  @override
  _TribeChatScreenState createState() => _TribeChatScreenState();
}

class _TribeChatScreenState extends State<TribeChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  List<Map<String, String>> messages = [
    {"name": "Joe Bot", "message": "I don't know how to keep going anymore. Everything feels like it's falling apart.👍💔", "time": "9:09 PM", "type": "received"},
    {"name": "Ethan", "message": "I feel that too.👋 It's like I'm just stuck in this endless loop of exhaustion. Nothing seems to make it better.", "time": "9:09 PM", "type": "sent"},
    {"name": "Joe Bot", "message": "Yeah, every day feels like the same struggle. I don't even want to leave the house anymore.😞", "time": "9:09 PM", "type": "received"},
    {"name": "Ethan", "message": "It's hard. But you know, talking 🙂 about it helps a little. I'm here if you need someone to listen.", "time": "9:09 PM", "type": "sent"},
    {"name": "Joe Bot", "message": "I get that. It's like you're there physically, but your mind is elsewhere, and no one seems to notice.😢", "time": "9:09 PM", "type": "received"},
    {"name": "Ethan", "message": "Exactly! I want to reach out, but I feel like no one will get it. Or they'll think I'm just overreacting.", "time": "9:09 PM", "type": "sent"},
    {"name": "Joe Bot", "message": "Thanks, Ethan. It means more than you know.😊", "time": "9:09 PM", "type": "sent"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(centerTitle: true,

          title: Text("Tribe chat room"),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'), // Add your avatar image here
              ),
            ),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: Container(
              padding: EdgeInsets.only(bottom: 8.0),
              alignment: Alignment.center,
              child: Text(
                '4922 Online',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            // Background
            Positioned.fill(
              child: Image.asset(
                'assets/images/home/tribe.jpg', // Change this to the path of your background image
                fit: BoxFit.cover,
              ),
            ),
            // Chat messages
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  var message = messages[index];
                  bool isSent = message['type'] == 'sent';
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Align(
                      alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        decoration: BoxDecoration(
                          color: isSent ? Colors.orangeAccent : Colors.grey[700],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        constraints: BoxConstraints(maxWidth: 250),
                        child: Column(
                          crossAxisAlignment:
                          isSent ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                          children: [
                            Text(
                              message['message']!,
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 4),
                            Text(
                              message['time']!,
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Message input area
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _messageController,
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send, color: Colors.orangeAccent),
                        onPressed: () {
                          Get.to(NewJournal());
                          setState(() {
                            if (_messageController.text.isNotEmpty) {
                              messages.insert(
                                  0,
                                  {
                                    'name': 'Ethan',
                                    'message': _messageController.text,
                                    'time': '9:09 PM',
                                    'type': 'sent',
                                  });
                              _messageController.clear();
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
