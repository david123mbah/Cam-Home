import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:movein/pages/home_page.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
          child: GNav(
            backgroundColor: Colors.white,
            gap: 10,
            color: Colors.black.withOpacity(0.4),
            activeColor: Colors.orange.withOpacity(0.4),
            tabBackgroundColor: Colors.orange.withOpacity(0.2),
            padding: const EdgeInsets.all(14),
            onTabChange: (index) {
              
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ), 
                 GButton(
                icon: Icons.favorite_border,
                text: "Likes",
              ), 
              
                  GButton(
                icon: Icons.search,
                text: "Search",
              ), 
              GButton(
                icon: Icons.person,
                text: "Profile",
              ), 
            ]
          ),
        ),
    );
  }
}