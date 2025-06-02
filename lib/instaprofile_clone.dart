import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
} 

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('creates_w_anzee', style: TextStyle(color: Colors.white)),
        actions: [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile image and stats
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile_image.png'), // Replace with your image path
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      StatWidget(label: 'posts', value: '3'),
                      StatWidget(label: 'followers', value: '48'),
                      StatWidget(label: 'following', value: '6'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Bio
            Text(
              'Exploring the worlds with technology',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 4),
            Text(
              'Followed by sarina_rumba07 and _si.wa.ni',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 12),

            // Action Buttons
            Row(
              children: [
                ActionButton(text: 'Following'),
                SizedBox(width: 8),
                ActionButton(text: 'Message'),
                SizedBox(width: 8),
                Container(
                  width: 36,
                  height: 32,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(Icons.person_add, color: Colors.white, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatWidget extends StatelessWidget {
  final String label;
  final String value;

  StatWidget({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label, style: TextStyle(color: Colors.white70)),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;

  ActionButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
