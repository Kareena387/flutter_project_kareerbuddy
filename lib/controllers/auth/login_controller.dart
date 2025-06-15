import 'dart:convert';

import 'package:kareerbuddy/constant/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kareerbuddy/services/auth_service.dart';
import 'package:kareerbuddy/views/home_page.dart';

// Login controller manages input and handles logic

class LoginController extends GetxController {
  TextEditingController username = TextEditingController(); // Username input
  TextEditingController password = TextEditingController(); // Password input

  final AuthService _authService = AuthService();

  // Executes login process
  void login() async {
    final success = await _authService.login(username.text, password.text);
    if (success) {
      Get.offAllNamed(HomePage.routeName); // Navigate to home
    } else {
      Get.snackbar("Login Failed", "Invalid username or password"); // Show error
    }
  }
}