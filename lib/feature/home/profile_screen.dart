import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';
import 'package:joe_stumble/route/route_name.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();

  String? _gender = 'Select';
  String? _ageRange = 'Select';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(
      title: "Profile",
        actionIcon: Icons.format_line_spacing,
      onAction: () {

      },
    ),


    body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture and User Info
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/avatar/avatar4.png'), // Change this to your image asset
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'Itunuoluwa Abidoye',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Advanced User',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 24),

            // Editable Fields
            _buildTextField('User Name', _usernameController, 'Your User Name'),
            _buildTextField('Email address', _emailController, 'Your email address'),
            _buildTextField('Phone', _phoneController, '+880'),
            _buildTextField('About me', _aboutController, 'Type here'),

            // Gender and Age Range Dropdowns
            _buildDropdown('Gender', _gender, ['Select', 'Male', 'Female', 'Other']),
            _buildDropdown('Age Range', _ageRange, ['Select', '18-25', '26-35', '36-45', '46-60', '60+']),

            SizedBox(height: 24),

            // Edit Button
              CustomButton(text: "Edit", onPressed: () {
               Get.toNamed(RouteName.tribute);

              },),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }

  // Method to build TextFormField
  Widget _buildTextField(String label, TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  // Method to build Dropdown menu
  Widget _buildDropdown(String label, String? value, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        },
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
