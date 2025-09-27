import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/feature/widget/splash/custom_text_field.dart';

class SetYourPinScreen extends StatefulWidget {
  const SetYourPinScreen({super.key});

  @override
  State<SetYourPinScreen> createState() => _SetYourPinScreenState();
}

class _SetYourPinScreenState extends State<SetYourPinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
        title: "Set Your Pin",
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
              SizedBox(height: 140.h),
              CustomTextField(
                labelText: "Enter 4 digit PIN",

                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                labelText: "Confirm PIN",

                width: 340.w,
                height: 49.h,
                isPassword: true,
              ),
              SizedBox(height: 30.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Trusted Peer',
                    style: TextStyle(color: Color(0xFF1A3C5E), fontSize: 18),
                  ),
                  Switch(
                    value: false, // Set initial value
                    onChanged: (bool value) {},
                    activeColor: Colors.blue,
                    inactiveThumbColor: Colors.grey,
                  ),
                ],
              ),

              SizedBox(height: 110.h),
              // Countdown Text
              Center(
                child: Text(
                  "Only user can unlock",
                  style: TextStyle(fontSize: 13.sp, color: Colors.black),
                ),
              ),
              SizedBox(height: 40.h),

              CustomButton(text: "Confirm", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
