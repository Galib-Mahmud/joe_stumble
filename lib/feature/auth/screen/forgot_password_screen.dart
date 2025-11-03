import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:joe_stumble/feature/widget/splash/custom_appbar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';
import '../../widget/splash/custom_text_field.dart';
import '../controller/forget_pass_controller.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final ForgetPassController controller = Get.put(ForgetPassController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              // Title Row
              SizedBox(height: 70.h),
              Text(
                "Forget Password",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),
          
              // Email Input Field
              CustomTextField(
                labelText: "E-mail",
                width: 340.w,
                height: 49.h,
                controller: controller.emailController,
              ),
              SizedBox(height: 40.h),
          
              // Send OTP Button
              CustomButton(
                text: "Forget Password",
                onPressed: () {
                  controller.forgetPass();


                },
          
              ),
            ],
          ),
        ),
      ),
    );
  }
}
