import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final Color backButtonColor;

  final String? actionIcon; // ✅ image asset path
  final VoidCallback? onAction;

  const CustomAppBar2({
    super.key,
    required this.title,
    this.onBack,
    this.backButtonColor = Colors.black,
    this.actionIcon,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: onBack != null
          ? Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: backButtonColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: onBack ?? () => Navigator.pop(context),
          ),
        ),
      )
          : null,
      actions: [
        if (actionIcon != null)
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: onAction,
              child: Image.asset(
                actionIcon!, // ✅ load asset image
                height: 24,
                width: 24,
                fit: BoxFit.contain,
              ),
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}