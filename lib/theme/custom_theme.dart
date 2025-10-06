import 'package:flutter/material.dart';

// Create a custom theme class to store all theme data
class CustomTheme {
  static ThemeData get themeData {
    return ThemeData(
      // Scaffold background color
      scaffoldBackgroundColor: Colors.white,

      // Primary Swatch (button color, etc.)
      primarySwatch: Colors.orange,

      // Button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.orange, // Text color inside button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
        ),
      ),

      // Text theme
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black), // bodyText1 is now bodyLarge
        bodyMedium: TextStyle(fontSize: 14, color: Colors.black54), // bodyText2 is now bodyMedium
        labelLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // button style
      ),
    );
  }
}
