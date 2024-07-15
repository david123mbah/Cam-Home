import 'package:flutter/material.dart';
import 'package:movein/pages/home_page.dart';
import 'package:movein/pages/landingpage.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadScreens(),
        '/home': (context) => const Homepage(),
        '/notification': (context) => const Homepage(),
        '/heat-pump': (context) => const LoadScreens(),
        '/usb': (context) => const Homepage(),
        '/settings': (context) => const Homepage(),
      },
    );
  }
}