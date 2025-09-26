import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/route/route_name.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(),
        bottomNavigationBar: CustomNavBar(),
        body: Column(
          children: [
            // Quote Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [

                  Icon(Icons.format_quote, color: Colors.green),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '“Glowing skin is always in take care of it, and it will take care of you”',
                      style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),

                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, color: Colors.green),
                  TextButton(onPressed: () {

                    Get.toNamed(RouteName.profile);

                  }, child: Text("Next")),
                ],
              ),
            ),
            SizedBox(height: 16),
      
            // All Bots Section
            Expanded(
              child: ListView(
                children: [
                  BotTile(
                    botName: 'MaxMind',
                    description: 'Direct, logical, and tech-savvy.',
                    time: '9:09 PM',
                    isLocked: false,
                  ),
                  BotTile(
                    botName: 'SophieBot',
                    description: 'Warm and personal.',
                    time: '9:09 PM',
                    isLocked: false,
                  ),
                  BotTile(
                    botName: 'SophieBot',
                    description: 'Warm, personal, and approachable.',
                    time: '9:09 PM',
                    isLocked: false,
                  ),
                  Divider(),
                  BotTile(
                    botName: 'Fresh Wounds',
                    description: 'Direct, logical, and tech-savvy.',
                    time: '9:09 PM',
                    isLocked: false,
                  ),
                  Divider(),
                  BotTile(
                    botName: 'Ahmed Thani',
                    description: 'Warm and personal.',
                    time: '9:09 PM',
                    isLocked: true,
                  ),
                  Divider(),
                  BotTile(

                    botName: 'Neel Hudson',
                    description: 'Warm, personal, and open-minded.',
                    time: '9:09 PM',
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

class BotTile extends StatelessWidget {
  final String botName;
  final String description;
  final String time;
  final bool isLocked;

  BotTile({
    required this.botName,
    required this.description,
    required this.time,
    required this.isLocked,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
        child: Text(botName[0].toUpperCase()),
      ),
      title: Text(botName),
      subtitle: Text(description),
      trailing: isLocked
          ? Icon(Icons.lock, color: Colors.grey)
          : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 5),
          Icon(Icons.circle, size: 12, color: Colors.green),
        ],
      ),
    );
  }
}
