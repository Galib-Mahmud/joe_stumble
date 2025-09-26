import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';
import 'package:joe_stumble/route/route_name.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Image.asset(
            "assets/images/home/founder.png", // Founder’s Badge icon
            width: 28,
            height: 28,
          ),
        ),
        title: Image.asset(
          "assets/images/splash/Stumble 2.png", // stum.ble logo
          height: 28,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(), // ✅ your custom nav bar
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Quote Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Quotes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "“Glowing skin is always in take care of it,\nand it will take care of you”",
                          style: TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Image.asset(
                    "assets/images/home/plant.png", // ✅ plant image
                    width: 90,
                    height: 90,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ✅ All Bots
            const Text(
              "All Bots",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "MaxMind",
                    description: "Direct, logical, and tech-savvy.",
                    time: "9:09 PM",
                    isLocked: false,
                  ),
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "SophieBot",
                    description: "Warm and personal.",
                    time: "9:09 PM",
                    isLocked: false,
                  ),
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "SophieBot",
                    description: "Warm, personal, and approachable.",
                    time: "9:09 PM",
                    isLocked: false,
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    "Community",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "Fresh Wounds",
                    description: "Direct, logical, and tech-savvy.",
                    time: "9:09 PM",
                    isLocked: false,
                  ),
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "Ahmed Thani",
                    description: "Warm and personal.",
                    time: "9:09 PM",
                    isLocked: true,
                  ),
                  BotTile(
                    avatar: "assets/images/home/avatar.jpg",
                    botName: "Neel Hudson",
                    description: "Warm, personal, and open-minded.",
                    time: "9:09 PM",
                    isLocked: true,
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

// ✅ BotTile widget
class BotTile extends StatelessWidget {
  final String avatar;
  final String botName;
  final String description;
  final String time;
  final bool isLocked;

  const BotTile({
    super.key,
    required this.avatar,
    required this.botName,
    required this.description,
    required this.time,
    required this.isLocked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 6),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(avatar), // ✅ custom avatar
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        botName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(description),
      trailing: isLocked
          ? const Icon(Icons.lock, color: Colors.grey)
          : Text(
        time,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
    );
  }
}
