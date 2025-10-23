import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../core/endpoint/api_endpoint.dart';
import '../../../route/route_name.dart';

class SignupController extends GetxController {
  // Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Observable variables
  final isPasswordVisible = true.obs;
  final isConfirmPasswordVisible = true.obs;
  final isLoading = false.obs;

  // Toggle functions
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  void toggleLoading() {
    isLoading.value = !isLoading.value;
  }

  // Main Register Function
  Future<void> register() async {
    final email = emailController.text.trim();
    final password = passwordController.text;
    final confirmPassword = confirmPasswordController.text;

    print("✅ Register function called");
    print("Email: $email");
    print("Password: $password");
    print("Confirm Password: $confirmPassword");

    // Validation
    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar("Error", "Please fill all the fields");
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar("Error", "Passwords do not match");
      return;
    }

    isLoading.value = true;

    try {
      final url = ApiEndpoint.signup;
      print("🌐 Sending POST request to: $url");

      final body = jsonEncode({
        "email": email,
        "password": password,
        "confirm_password": confirmPassword,
      });
      print("📦 Request Body: $body");

      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: body,
      );

      print("📩 Response Status Code: ${response.statusCode}");
      print("📩 Raw Response Body: ${response.body}");

      // Decode JSON safely
      dynamic data;
      try {
        data = jsonDecode(response.body);
      } catch (e) {
        print("❌ JSON Decode Error: $e");
        Get.snackbar("Error", "Invalid server response");
        return;
      }

      // Handle response based on backend format
      final bool success = data["success"] == true || data["status"] == true;
      final String message = data["message"] ?? "No message received";

      if (response.statusCode == 200 && success) {
        print("✅ Registration Successful");
        Get.snackbar("Success", message);
        Get.toNamed(RouteName.otpScreen, arguments: {"email": email});
      } else {
        print("⚠️ Registration Failed: $message");
        Get.snackbar("Error", message);
      }
    } catch (e) {
      print("🔥 Exception caught during registration: $e");
      Get.snackbar("Error", "Something went wrong: $e");
    } finally {
      isLoading.value = false;
      print("⏹️ Loading stopped");
    }
  }
}
