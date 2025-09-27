import 'package:flutter/material.dart';
import 'package:joe_stumble/feature/widget/home/custom_appbar2.dart';
import 'package:joe_stumble/feature/widget/home/custom_nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: "Settings",
        actionIcon: "assets/images/avatar/dot.png",
        onAction: () {},
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Others",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _SettingsItem(
              icon: Icons.lock_outline,
              label: "New Password",
            ),
            _SettingsItem(
              icon: Icons.shield_outlined,
              label: "Terms of Use",
            ),
            _SettingsItem(
              icon: Icons.lock,
              label: "Privacy Policy",
            ),
            _SettingsItem(
              icon: Icons.info_outline,
              label: "Disclaimers",
            ),
            _SettingsItem(
              icon: Icons.storage,
              label: "Data Retention",
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                "Danger Actions",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _SettingsItem(
              icon: Icons.delete_outline,
              label: "Delete Account",
            ),
            _SettingsItem(
              icon: Icons.logout,
              label: "Log out",
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

/// ✅ Settings Item Widget (for reusability)
class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _SettingsItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.grey[600],
                size: 20,
              ),
              const SizedBox(width: 16),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
            size: 24,
          ),
        ],
      ),
    );
  }
}