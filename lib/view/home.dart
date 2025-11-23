import 'package:flutter/material.dart';
import 'package:eraa_projects/widgets/bottom_nav_bar.dart';
import 'package:eraa_projects/widgets/float_button.dart';
import 'package:eraa_projects/widgets/list_tile.dart';
import 'package:eraa_projects/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatActionButton(),
      bottomNavigationBar: const BottomNavBar(),
      appBar: myAppBar(),
      body: const Column(
        children: [
          SearchWidget(),
          ListTileWidget(),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      title: const Text(
        'whats App',
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_sharp),
        )
      ],
    );
  }
}
