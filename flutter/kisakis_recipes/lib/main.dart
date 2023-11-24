import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Assuming your HomeScreen file is in a "screens" directory

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisaki Recipes',
      theme: ThemeData(
          // Add your theme configuration if needed
          ),
      home: HomeScreen(), // Use HomeScreen as the home page
    );
  }
}
