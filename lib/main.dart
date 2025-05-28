// Create a Flutter app that:
// 1. Has a list of button titles: 'login', 'sign up', 'refreshing', 'logout'
// 2. Shows all buttons on the screen using ListView.builder
// 3. Makes a custom button widget that:
// 4. Accepts the button title
// 5. Changes button color based on the title: 'login' → green
// 'sign up' → blue
// 'refreshing' → orange
// 'logout' → red
// any other → grey
// When a button is pressed, log the title in the terminal: 'login button pressed' (or the corresponding title)


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ButtonListScreen(),
    );
  }
}

class ButtonListScreen extends StatelessWidget {
  const ButtonListScreen({super.key});

  final List<String> buttonTitles = const [
    'login',
    'sign up',
    'refreshing',
    'logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Buttons')),
      body: ListView.builder(
        itemCount: buttonTitles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(title: buttonTitles[index]),
          );
        },
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;

  const CustomButton({super.key, required this.title});

  Color _getColorByTitle(String title) {
    switch (title.toLowerCase()) {
      case 'login':
        return Colors.green;
      case 'sign up':
        return Colors.blue;
      case 'refreshing':
        return Colors.orange;
      case 'logout':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _getColorByTitle(title),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: () {
        debugPrint('$title button pressed');
      },
      child: Text(title.toUpperCase(), style: const TextStyle(fontSize: 18)),
    );
  }
}
