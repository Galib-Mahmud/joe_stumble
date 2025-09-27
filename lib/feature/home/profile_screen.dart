import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/tribe_chat_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';
import 'package:joe_stumble/feature/widget/splash/custom_button.dart';

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
      appBar: CustomAppBar2(
        title: "Profile",
        actionIcon:"assets/images/avatar/menu.png",onAction: () {

      },

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(

              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start, // Align items to the top
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/splash/Stumble 2.png',
                          height: 20,
                          fit: BoxFit.contain, // Ensure image fits within height
                        ),
                        Image.asset(
                          'assets/images/avatar/avatar4.png',
                          height: 40,
                          fit: BoxFit.contain, // Ensure image fits within height
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Daniel Jones',
                          style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Founder Badges',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context); // Close the drawer
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('My Account'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Add navigation logic here if needed
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_library),
              title: const Text('My Videos'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Add navigation logic here if needed
              },
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Add navigation logic here if needed
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Add navigation logic here if needed
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context); // Close drawer
                // Add logout logic here if needed
              },
            ),
          ],
        ),
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
                backgroundImage: const AssetImage('assets/images/avatar/avatar4.png'),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: const Text(
                'Itunuoluwa Abidoye',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: const Text(
                'Advanced User',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 24),

            // Editable Fields
            _buildTextField('User Name', _usernameController, 'Your User Name'),
            _buildTextField('Email address', _emailController, 'Your email address'),
            _buildTextField('Phone', _phoneController, '+880'),
            _buildTextField('About me', _aboutController, 'Type here'),

            // Gender and Age Range Dropdowns
            _buildDropdown('Gender', _gender, ['Select', 'Male', 'Female', 'Other']),
            _buildDropdown('Age Range', _ageRange, ['Select', '18-25', '26-35', '36-45', '46-60', '60+']),

            const SizedBox(height: 24),

            // Edit Button
            CustomButton(
              text: "Edit",
              onPressed: () {
                Get.to(TribeChatScreen());
              },
            ),
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
            if (label == 'Gender') _gender = newValue;
            if (label == 'Age Range') _ageRange = newValue;
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