import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
     final List<Widget> navigationItem = [
      Image.asset(
        'android/assets/images/Frame 39.png',
        color: Colors.black.withOpacity(0.3),
        width: 44,
        height: 44,
      ),
      
      Image.asset(
        'android/assets/images/Search icon.png',
        color: Colors.black.withOpacity(0.3),
        width: 44,
        height: 44,
      ),
      Image.asset(
        'android/assets/images/menu - analysis.png',
        color: Colors.black.withOpacity(0.4),
        width: 54,
        height: 54,
      ),
      Image.asset(
        'android/assets/images/Frame.png',
        color: Colors.black.withOpacity(0.3),
        width: 24,
        height: 34,
      ),
      Image.asset(
        'android/assets/images/Frame 36.png',
        color: Colors.black.withOpacity(0.3),
        width: 44,
        height: 44,
      ),
    ];
    Color bgColor = const Color.fromARGB(255, 246, 238, 238).withOpacity(0.35);
    return CurvedNavigationBar(
        backgroundColor: bgColor,
        buttonBackgroundColor: Colors.indigoAccent,
        animationDuration: const Duration(milliseconds: 300),
        items: navigationItem,
        onTap: (index) {
          if (index == 0) {
            bgColor = Colors.blue;
          }
          if (index == 1) {
            bgColor = Colors.yellow;
          }
          if (index == 2) {
            bgColor = Colors.red;
          }
          if (index == 3) {
            bgColor = Colors.green;
          }
          if (index == 4) {
            bgColor = Colors.brown;
          }
        },
      );
  }
}