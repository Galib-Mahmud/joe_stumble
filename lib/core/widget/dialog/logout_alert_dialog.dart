import 'package:flutter/material.dart';

import '../text/app_text.dart';
class LogoutAlertDialog extends StatelessWidget {
  final VoidCallback? onCancel;
  final VoidCallback? onLogout;

  const LogoutAlertDialog({
    super.key,
    this.onCancel,
    this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFFD4C5C1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      contentPadding: const EdgeInsets.all(40),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          AppText(
            data: 'Are you sure?',
            fontSize: 32,
            fontWeight: FontWeight.w800,
            color: Color(0xFF3A3A3A),
            height: 1.1,
          ),

          const SizedBox(height: 24),

          // Description
          AppText(
            data: 'Are you sure, you want to log out from this account?',
            fontSize: 20,
            color: Color(0xFF5A5A5A),
            height: 1.3,
            fontWeight: FontWeight.w500,
          ),

          const SizedBox(height: 40),

          // Buttons Row
          Row(
            children: [
              // Cancel Button - This will close the dialog
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    // If onCancel is provided, use it, otherwise just close the dialog
                    onPressed: onCancel ?? () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xFF3A3A3A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                    ),
                    child: AppText(
                      data: 'Cancel',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 20),

              // Log out Button
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: onLogout ?? () => Navigator.of(context).pop(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFE67E52),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 0,
                    ),
                    child: AppText(
                      data: 'Log out',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to show the dialog
  static Future<void> show(
      BuildContext context, {
        VoidCallback? onCancel,
        VoidCallback? onLogout,
      }) {
    return showDialog(
      context: context,
      builder: (context) => LogoutAlertDialog(
        onCancel: onCancel,
        onLogout: onLogout,
      ),
    );
  }
}


// Usage examples:

// 1. Simple usage - Cancel button will just close the dialogLogoutAlertDialog
// LogoutAlertDialog.show(
// context,
// onLogout: () {
// // Handle logout logic here
// print('User logged out');
// },
// );
//
// // 2. Custom cancel behavior
// LogoutAlertDialog.show(
// context,
// onCancel: () {
// Navigator.of(context).pop(); // Close dialog
// print('User cancelled logout');
// },
// onLogout: () {
// Navigator.of(context).pop(); // Close dialog
// // Handle logout logic
// print('User logged out');
// },
// );