import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kareerbuddy/controllers/auth/login_controller.dart';

// LoginPage widget
class LoginPage extends StatelessWidget {
  static String routeName = "/login-page";
  final c = LoginController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Username Field
            TextField(
              controller: c.username,
              decoration: InputDecoration(hintText: "Username/Email"),
            ),
            SizedBox(height: 20),
            // Password Field
            TextField(
              controller: c.password,
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(height: 40),
            // Login Button
            ElevatedButton(
              onPressed: c.login,
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
