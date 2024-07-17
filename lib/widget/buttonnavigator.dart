import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:movein/pages/home_page.dart'; // Make sure this import is correct

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    Homepage(),
    // Add other pages here
    Center(child: Text('Likes Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            gap: 10,
            color: Colors.grey.withOpacity(0.67),
            activeColor: Colors.purpleAccent.withOpacity(0.4),
            tabBackgroundColor: Colors.purpleAccent.withOpacity(0.2),
            padding: EdgeInsets.all(14),
            onTabChange: _onTabChange,
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
            ],
          ),
        ),
      ),
    );
  }
}
