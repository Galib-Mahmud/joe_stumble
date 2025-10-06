import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/auth/find_tribe.dart';
import 'package:joe_stumble/feature/auth/reset_password_screen.dart';
import 'package:joe_stumble/feature/community/community_picker_screen.dart';
import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class GetMentor extends StatefulWidget {
  const GetMentor({super.key});

  @override
  State<GetMentor> createState() => _GetMentorState();
}

class _GetMentorState extends State<GetMentor> {
  String? _selectedOption; // store selected gender

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  Widget buildRadioOption(String value) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        value,
        style: TextStyle(fontSize: 16.sp, color: Colors.black),
      ),
      leading: Radio<String>(
        value: value,
        groupValue: _selectedOption,
        onChanged: _handleRadioValueChange,
        activeColor: Colors.orange,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70.h),
                Text(
                  "Get a Mentor",
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30.h),

                // Radio Buttons
                Column(
                  children: [Image.asset('assets/images/avatar/mentor.png')],
                ),

                SizedBox(height: 60.h),

                Text(
                  "Someone to talk to anytime you need it ",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30.h),

                CustomButton(text: "Get a Mentor", onPressed: () {

               Get.toNamed(RouteName.community);

                }),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Become a mentor",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
