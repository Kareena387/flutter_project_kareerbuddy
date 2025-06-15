import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kareerbuddy/core_storage/core_storage_service.dart';
import '../../services/auth_service.dart';
import 'package:kareerbuddy/model/user_model.dart';

// HomePage displays user profile and logout button
class HomePage extends StatefulWidget {
  static String routeName = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AuthService _authService = AuthService();
  UserModel? user;

  @override
  void initState() {
    super.initState();
    loadProfile(); // Fetch profile on start
  }

  // Load user data from API
  void loadProfile() async {
    user = await _authService.getProfile();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          // Logout Button
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              CoreStorageService.clearToken(); // Clear token
              Get.offAllNamed("/login-page"); // Go to login screen
            },
          )
        ],
      ),
      // Show loading or profile data
      body: user == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome, ${user!.firstName}", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 8),
                  Text("Email: ${user!.email}"),
                ],
              ),
            ),
    );
  }
}
