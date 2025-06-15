import 'package:kareerbuddy/views/auth/login_page.dart';
import 'package:kareerbuddy/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();//initialize getstorage before app starts
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  final box = GetStorage();
}

@override
  Widget build(BuildContext context) {
    // Check if token exists to decide initial route
    final initialRoute = box.read('token') != null ? HomePage.routeName : LoginPage.routeName;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: [
        GetPage(name: LoginPage.routeName, page: () => LoginPage()),
        GetPage(name: HomePage.routeName, page: () => HomePage()),
      ],
    );
  }

}