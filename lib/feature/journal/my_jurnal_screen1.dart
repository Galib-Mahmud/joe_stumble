import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/home/app_navigation.dart';
import 'package:joe_stumble/feature/home/my_journal_screen.dart';

import '../widget/home/custom_appbar2.dart';

class MyJournalsScreen1 extends StatefulWidget {
  @override
  _MyJournalsScreen1State createState() => _MyJournalsScreen1State();
}

class _MyJournalsScreen1State extends State<MyJournalsScreen1> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar2(
        title: "My Journals",
        onBack: () {
          Navigator.pop(context);
        },
        backButtonColor: Colors.black,
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home/Depressed.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: const AssetImage('assets/images/avatar/avatar3.png'),
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "SophieBot (You)",
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Orbit",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.w),
                color: Colors.white.withOpacity(0.9), // semi-transparent
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "I'm really sorry you're feeling this way but I can't provide the help that you need. It's really important to talk to someone who can offer support here and now. If my member or professional! Please reason to you a forgive or a mental health expert immediately. You don't have to go through this alone.",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.justify,
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
