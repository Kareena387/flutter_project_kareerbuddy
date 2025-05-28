import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("my app bar"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomButton(title: "Kareena",decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12)
            ),),
            SizedBox(
              height: 40,
            ),
            CustomButton(title: "Login",decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(12)
            ),)
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}