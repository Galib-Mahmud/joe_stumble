import 'package:flutter/material.dart';

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
    {
      "name": "Joe Bot",
      "message": "Yeah, every day feels like the same struggle. I don't even want to leave the house anymore.😞",
      "time": "9:09 PM",
      "type": "received"
    },
    {
      "name": "Ethan",
      "message": "It's hard. But you know, talking 🙂 about it helps a little. I'm here if you need someone to listen.",
      "time": "9:09 PM",
      "type": "sent"
    },
    {
      "name": "Joe Bot",
      "message": "I get that. It's like you're there physically, but your mind is elsewhere, and no one seems to notice.😢",
      "time": "9:09 PM",
      "type": "received"
    },
    {
      "name": "Ethan",
      "message": "Exactly! I want to reach out, but I feel like no one will get it. Or they'll think I'm just overreacting.",
      "time": "9:09 PM",
      "type": "sent"
    },
    {
      "name": "Joe Bot",
      "message": "Thanks, Ethan. It means more than you know.😊",
      "time": "9:09 PM",
      "type": "received"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
      centerTitle: true,
      title: const Text(
        'Tribe Chat room\n 4622 Online ',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false, // prevent default back arrow
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black, // ✅ Back button background color
            shape: BoxShape.circle, // circular background
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white), // arrow color
            onPressed: () {
              Navigator.pop(context); // go back
            },
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.arrow_circle_right_outlined, color: Colors.black),
        ),
      ],
    ),

      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/home/tribe.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Fixed 4 Bot Avatars Row
          Positioned(
            top: kToolbarHeight + 70,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildBotAvatar("assets/images/home/Joe.jpg", "Joe Bot\n Grounding"),
                const SizedBox(width: 20),
                _buildBotAvatar("assets/images/home/Joe.jpg", "Joe Bot\n Grounding"),
                const SizedBox(width: 20),
                _buildBotAvatar("assets/images/home/Joe.jpg", "Joe Bot\n Grounding"),
                const SizedBox(width: 20),
                _buildBotAvatar("assets/images/home/Joe.jpg", "Joe Bot\n Grounding"),
              ],
            ),
          ),

          // Messages
          Padding(
            padding: const EdgeInsets.only(top: 120.0, bottom: 70),
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                var message = messages[index];
                bool isSent = message['type'] == 'sent';

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                  child: Align(
                    alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                      decoration: BoxDecoration(
                        color: isSent ? Colors.orangeAccent : Colors.grey[800],
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(16),
                          topRight: const Radius.circular(16),
                          bottomLeft: isSent ? const Radius.circular(16) : const Radius.circular(0),
                          bottomRight: isSent ? const Radius.circular(0) : const Radius.circular(16),
                        ),
                      ),
                      constraints: const BoxConstraints(maxWidth: 260),
                      child: Text(
                        message['message']!,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
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
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, -2)),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Type a Message',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.orangeAccent),
                    onPressed: () {
                      setState(() {
                        if (_messageController.text.isNotEmpty) {
                          messages.insert(0, {
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
        ],
      ),
    );
  }

  /// Helper widget for bot avatars
  Widget _buildBotAvatar(String imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
