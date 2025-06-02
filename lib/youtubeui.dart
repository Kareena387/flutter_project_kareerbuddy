import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('YouTube Profile Header')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Magnus Midtbø',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('@magmidt'),
                      Text('2.89M subscribers · 444 videos'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Sponsor inquiries: magnus@delkatalents.com'),
              Text('Instagram: instagram.com/magmidt'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Subscribe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
