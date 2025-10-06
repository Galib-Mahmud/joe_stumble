import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';

/// ---------------------------
/// Custom Input Field (TextField & Dropdown)
/// ---------------------------
enum InputType { text, dropdown }

class CustomInputField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final InputType inputType;
  final List<String>? dropdownItems;
  final String? dropdownValue;
  final Function(String?)? onChanged;

  const CustomInputField({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.inputType = InputType.text,
    this.dropdownItems,
    this.dropdownValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: inputType == InputType.text
          ? TextField(
        controller: controller,
        style: TextStyle(fontSize: 14.sp),
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          labelStyle: TextStyle(fontSize: 14.sp),
          hintStyle: TextStyle(fontSize: 14.sp, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      )
          : DropdownButtonFormField<String>(
        value: dropdownValue,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(fontSize: 14.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        items: dropdownItems!
            .map(
              (val) => DropdownMenuItem<String>(
            value: val,
            child: Text(val, style: TextStyle(fontSize: 14.sp)),
          ),
        )
            .toList(),
      ),
    );
  }
}

/// ---------------------------
/// Profile Screen
/// ---------------------------
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();

  String? _gender = 'Select';
  String? _ageRange = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar2(
        title: "Profile",
        actionIcon: "assets/images/avatar/menu.png",
        onAction: () {},
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile Picture
                      Center(
                        child: CircleAvatar(
                          radius: 50.r,
                          backgroundImage:
                          const AssetImage('assets/images/avatar/avatar4.png'),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Center(
                        child: Text(
                          'Itunuoluwa Abidoye', // Replace with dynamic user name
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Advanced User', // Replace with dynamic role/status
                          style: TextStyle(color: Colors.grey, fontSize: 14.sp),
                        ),
                      ),
                      SizedBox(height: 24.h),

                      // Text Fields
                      CustomInputField(
                        label: 'User Name',
                        controller: _usernameController,
                        hintText: 'Your User Name',
                      ),
                      CustomInputField(
                        label: 'Email Address',
                        controller: _emailController,
                        hintText: 'Your Email Address',
                      ),
                      CustomInputField(
                        label: 'Phone',
                        controller: _phoneController,
                        hintText: '+880',
                      ),
                      CustomInputField(
                        label: 'About Me',
                        controller: _aboutController,
                        hintText: 'Type here',
                      ),

                      // Dropdowns
                      CustomInputField(
                        label: 'Gender',
                        inputType: InputType.dropdown,
                        dropdownItems: ['Select', 'Male', 'Female', 'Other'],
                        dropdownValue: _gender,
                        onChanged: (val) => setState(() => _gender = val),
                      ),
                      CustomInputField(
                        label: 'Age Range',
                        inputType: InputType.dropdown,
                        dropdownItems: [
                          'Select',
                          '18-25',
                          '26-35',
                          '36-45',
                          '46-60',
                          '60+'
                        ],
                        dropdownValue: _ageRange,
                        onChanged: (val) => setState(() => _ageRange = val),
                      ),

                      const Spacer(),

                      // Edit Button
                      CustomButton(
                        text: "Edit",
                        onPressed: () => Get.to(TribeChatScreen()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
