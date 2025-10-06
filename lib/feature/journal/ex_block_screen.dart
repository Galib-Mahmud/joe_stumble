import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/journal/ex_block_card.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';

import '../home/app_navigation.dart';

class ExBlockScreen extends StatefulWidget {
  const ExBlockScreen({super.key});

  @override
  State<ExBlockScreen> createState() => _ExBlockScreenState();
}

class _ExBlockScreenState extends State<ExBlockScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "Ex Block",
        onBack: () => Navigator.pop(context),
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),

      backgroundColor: Colors.white,

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80.h),
              Center(

                child: Image.asset(
                  'assets/images/community/block.png',width: 172.w,
                  height: 172.h,

                  fit: BoxFit.contain,
                ),
              ),


              // Countdown Text
              Center(
                child: Text(
                  "Block EX phone / social media ",
                  style: TextStyle(fontSize: 18.sp, color: Colors.black),
                ),
              ),
              SizedBox(height: 140.h), Center(
                child: Text(
                  "Protected by PIN",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                ),
              ),
              SizedBox(height: 40.h),

              CustomButton(text: "Confirm", onPressed: () {
                AppNavigation.push(context, ExBlockCard());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
