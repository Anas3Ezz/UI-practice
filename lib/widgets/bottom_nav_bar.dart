import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
