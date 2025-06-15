import 'package:kareerbuddy/views/auth/login_page.dart';
import 'package:kareerbuddy/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


void main() async {
  await GetStorage.init(); // Initialize GetStorage for local storage
  runApp(MyApp()); // Start the app
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Initial screen
      getPages: [ // Routing table
        GetPage(name: LoginPage.routeName, page: () => LoginPage()),
        GetPage(name: HomePage.routeName, page: () => HomePage()),
      ],
    );
  }
}

