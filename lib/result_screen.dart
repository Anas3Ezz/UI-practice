import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmiValue});
  final double bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(child: Text(bmiValue.toStringAsFixed(2))),
        ],
      ),
    ));
  }
}
