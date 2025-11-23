import 'package:flutter/material.dart';

class FloatActionButton extends StatelessWidget {
  const FloatActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.green,
      onPressed: () {},
      child: const Icon(Icons.chat_bubble),
    );
  }
}
