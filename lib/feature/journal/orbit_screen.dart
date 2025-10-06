import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/home/custom_appbar2.dart';

class OrbitScreen extends StatefulWidget {
  @override
  _OrbitScreenState createState() => _OrbitScreenState();
}

class _OrbitScreenState extends State<OrbitScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: CustomAppBar2(
        title: "Orbit",
        backButtonColor: Colors.black,
        actionIcon: "assets/images/avatar/star.png",
        onAction: () {},
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home/Depressed.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(16.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 0.75,
          ),
          itemCount: 5,
          itemBuilder: (context, index) {
            List<String> texts = [
              "You are stronger than you think, even when you feel weak.",
              "You are worthy of love, care, and hope - always, no matter what.",
              "You are not alone in this, even in darkness. There is a spark waiting to shine.",
              "You are stronger than you think, even when you feel weak.",
              "Dark times teach us to appreciate the light. Hold on; better days are coming."
            ];

            return _buildPostCard(
              imageUrl: 'assets/images/avatar/orbit1.jpg',
              text: texts[index],
            );
          },
        ),
      ),
    );
  }

  Widget _buildPostCard({required String imageUrl, required String text}) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20.sp,
                  ),
                ],
              ),
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
