import 'package:flutter/material.dart';
import 'package:kareerbuddy/controllers/storage_controller.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final storage = StorageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to the App!', style: TextStyle(fontSize: 24)),
          ElevatedButton(
            onPressed: () {
              storage.setFirstTime(false);
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
