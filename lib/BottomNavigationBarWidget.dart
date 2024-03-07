import 'package:flutter/material.dart';
import 'package:stroll_task/colors.dart';
import 'package:stroll_task/main_screen/main_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final List<BottomNavigationBarItem> navItemsList = [
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/bottom_nav_icon_1.png",
        height: 15,
        width: 15,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/bottom_nav_icon_2.png",
        height: 15,
        width: 15,
      ),
      label: 'Search',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/bottom_nav_icon_3.png",
        height: 15,
        width: 15,
      ),
      label: 'Favorites',
    ),
  ];
  int _selectedIndex = 0;

  final List<Widget> screensList = [
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomNavigationBarColor,
        selectedItemColor: primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottom_nav_icon_1.png",
              height: 25,
              width: 25,
              color: _selectedIndex == 0 ? primaryColor : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottom_nav_icon_2.png",
              height: 25,
              width: 25,
              color: _selectedIndex == 1 ? primaryColor : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/bottom_nav_icon_3.png",
              height: 25,
              width: 25,
              color: _selectedIndex == 2 ? primaryColor : Colors.grey,
            ),
            label: '',
          ),
        ],
      ),
      body: screensList[_selectedIndex],
    );
  }
}
