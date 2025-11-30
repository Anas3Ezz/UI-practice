import 'package:eraa_projects/view/calls_screen.dart';
import 'package:eraa_projects/view/communities_screen.dart';
import 'package:eraa_projects/view/home.dart';
import 'package:eraa_projects/view/story_screen.dart';
import 'package:eraa_projects/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeScreen(),
    const StoryScreen(),
    const CommunitiesScreen(),
    const CallsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        iconSize: 30,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        selectedIconTheme: const IconThemeData(
          color: Colors.green,
        ),
        selectedLabelStyle: const TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: ('Chats'),
            icon: Icon(Icons.chat_outlined),
          ),
          BottomNavigationBarItem(
            label: ('Updates'),
            icon: Icon(Icons.tips_and_updates_outlined),
          ),
          BottomNavigationBarItem(
            label: ('Communities'),
            icon: Icon(Icons.people_outline),
          ),
          BottomNavigationBarItem(
            label: ('Calls'),
            icon: Icon(Icons.call_outlined),
          ),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
