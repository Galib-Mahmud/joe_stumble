import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/home/custom_appbar2.dart';

class MyVideosScreen extends StatefulWidget {
  @override
  _MyVideosScreenState createState() => _MyVideosScreenState();
}

class _MyVideosScreenState extends State<MyVideosScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar2(
        title: "My Videos",
        onBack: () {
          Navigator.pop(context);
        },
        backButtonColor: Colors.black,
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          _buildVideoCard(
            imageUrl: 'assets/images/avatar/myvedio.jpg',
            duration: '03:05',
          ),
          _buildVideoCard(
            imageUrl: 'assets/images/avatar/myvedio.jpg',
            duration: '03:05',
          ),
        ],
      ),
    );
  }

  Widget _buildVideoCard({required String imageUrl, required String duration}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  duration,
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showSOSDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "SOS",
          style: TextStyle(fontSize: 18.sp),
        ),
        content: Text(
          "Emergency help is on the way. Please stay calm and seek assistance immediately.",
          style: TextStyle(fontSize: 14.sp),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "OK",
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
