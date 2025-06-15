import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:kareerbuddy/constant/api.dart';
import 'package:kareerbuddy/services/auth_service.dart';
import 'package:kareerbuddy/views/home_page.dart';

/// Login controller manages user input and triggers authentication
class LoginController extends GetxController {
  // Text editing controllers to capture input from the user
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  // AuthService instance to handle API logic
  final AuthService _authService = AuthService();

  /// Performs login operation with validation and error handling
  void login() async {
    // Basic input validation
    if (username.text.isEmpty || password.text.isEmpty) {
      Get.snackbar("Validation Error", "Please enter both username and password");
      return;
    }

    try {
      // Calls login method from AuthService
      final success = await _authService.login(username.text, password.text);

      if (success) {
        // On successful login, navigate to HomePage
        Get.offAllNamed(HomePage.routeName);
      }
    } catch (e) {
      // If login fails (API error), show snackbar with error message
      Get.snackbar("Login Failed", e.toString());
    }
  }
}
