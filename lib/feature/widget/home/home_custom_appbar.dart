import 'package:flutter/material.dart';

class HomeCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onAction;

  const HomeCustomAppBar({
    super.key,
    required this.title,
    this.onBack,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const CircleAvatar(
          radius: 18,
          backgroundColor: Color(0xFF0A1D2E), // Dark navy circle
          child: Icon(Icons.arrow_back, color: Colors.white, size: 18),
        ),
        onPressed: onBack ?? () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          icon: const CircleAvatar(
            radius: 18,
            backgroundColor: Colors.white,
            child: Icon(Icons.more_horiz, color: Colors.black),
          ),
          onPressed: onAction ?? () {},
        ),
        const SizedBox(width: 8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
