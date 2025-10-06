import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
          padding: EdgeInsets.only(left: 12.w),
          child: Image.asset(
            "assets/images/home/founder.png",
            width: 28.w,
            height: 28.h,
          ),
        ),
        title: Image.asset(
          "assets/images/splash/Stumble 2.png",
          height: 28.h,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ✅ Quote Card
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8.r,
                    offset: Offset(2.w, 3.h),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Quotes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          "“Glowing skin is always in take care of it,\nand it will take care of you”",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Image.asset(
                    "assets/images/home/plant.png",
                    width: 90.w,
                    height: 90.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // ✅ All Bots
            Text(
              "All Bots",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
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

                  SizedBox(height: 10.h),
                  Text(
                    "Community",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
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
      contentPadding: EdgeInsets.symmetric(vertical: 6.h),
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 24.r,
            backgroundImage: AssetImage(avatar),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 10.w,
              height: 10.h,
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
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
      ),
      subtitle: Text(
        description,
        style: TextStyle(fontSize: 12.sp),
      ),
      trailing: isLocked
          ? const Icon(Icons.lock, color: Colors.grey)
          : Text(
        time,
        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
      ),
    );
  }
}
