import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/Eraa.jpg',
          )),
      title: const Text(
        'Eraa soft',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'Welcome to Eraa soft , your path is wating for you',
        style: TextStyle(
            fontSize: 18, color: Colors.grey, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
