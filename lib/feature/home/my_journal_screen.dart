import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joe_stumble/feature/home/depressed_riyaj_screen.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

// Assuming CustomButton is a custom widget already defined elsewhere, or you can use ElevatedButton directly
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFFB8C00), // Orange color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyJournalScreen extends StatelessWidget {
  const MyJournalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const CustomJournalAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity, // Ensure the container takes up the full screen
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/home/NewJournal.png"), // background image
            fit: BoxFit.cover, // Make sure the image covers the screen
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildTextField("How are you feeling?"),
                const SizedBox(height: 16),
                _buildTextField("What's on your mind?"),
                const SizedBox(height: 40),

                // Custom Save Button with navigation
                CustomButton(
                  text: "Save",
                  onPressed: () {
                    // Navigate to the next screen using Get
                  Get.to(DepressedScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable TextField
  Widget _buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

// ✅ Custom AppBar for Journal screen
class CustomJournalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomJournalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        children: [
          Image.asset(
            "assets/images/splash/Stumble 2.png", // logo asset
            height: 24,
          ),
          const SizedBox(width: 8),
          const Text(
            "My Journals",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ],
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            // Handle settings if needed
          },
          icon: const Icon(Icons.settings, color: Colors.black),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
