import 'package:flutter/material.dart';
import 'package:movein/pages/home_page.dart';

// ignore: must_be_immutable
class BottomNav extends StatefulWidget {
  const BottomNav({super.key, required List<Stack> children, required CustomScrollView child});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> navigation = [
    const Homepage(),
    const Homepage(),
    const Homepage(),
    const Homepage(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onTap(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: navigation[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10)
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTap,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          backgroundColor:  Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          iconSize: 24,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(selectedIndex == 0 ? 30 : 0),
                    bottomLeft: Radius.circular(selectedIndex == 0 ? 30 : 0),
                    bottomRight: Radius.circular(selectedIndex == 0 ? 30 : 0),
                  ),
                  color: selectedIndex == 0
                      ? Colors.purpleAccent.withOpacity(0.4)
                      : Colors.transparent,
                ),
                child: Image.asset(
                  'android/assets/images/Frame 39.png',
                  height: 54,
                  width: 54,
                  color: Colors.black.withOpacity(0.68),
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(selectedIndex == 1 ? 30 : 0),
                    bottomLeft: Radius.circular(selectedIndex == 2 ? 30 : 0),
                    bottomRight: Radius.circular(selectedIndex == 1 ? 30 : 0),
                  ),
                  color: selectedIndex == 1
                      ? Colors.purpleAccent.withOpacity(0.4)
                      : Colors.transparent,
                ),
                child: Image.asset(
                  'android/assets/images/Frame 37.png',
                  height: 54,
                  width: 54,
                  color: Colors.black.withOpacity(0.68),
                ),
              ),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(selectedIndex == 2 ? 30 : 0),
                    bottomLeft: Radius.circular(selectedIndex == 2 ? 30 : 0),
                    bottomRight: Radius.circular(selectedIndex == 2 ? 30 : 0),
                  ),
                  color: selectedIndex == 2
                      ? Colors.purpleAccent.withOpacity(0.4)
                      : Colors.transparent,
                ),
                child: Image.asset(
                  'android/assets/images/Frame 36.png',
                  height: 54,
                  width: 54,
                  color: Colors.black.withOpacity(0.68),
                ),
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(selectedIndex == 3 ? 30 : 0),
                    bottomLeft: Radius.circular(selectedIndex == 3 ? 30 : 0),
                    bottomRight: Radius.circular(selectedIndex == 3 ? 30 : 0),
                  ),
                  color: selectedIndex == 3
                      ? Colors.purpleAccent.withOpacity(0.4)
                      : Colors.transparent,
                ),
                child: Image.asset(
                  'android/assets/images/Search icon.png',
                  height: 54,
                  width: 54,
                  color: Colors.black.withOpacity(0.68),
                ),
              ),
              label: 'Search',
            ),
          ],
        ),
      ),
    );
  }
}