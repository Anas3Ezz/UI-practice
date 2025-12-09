import 'package:flutter/material.dart';

class AgeAndWeightContainer extends StatelessWidget {
  const AgeAndWeightContainer({
    super.key,
    required this.title,
    required this.counterValue,
    required this.decrement,
    required this.dncrement,
  });
  final String title;
  final int counterValue;
  final VoidCallback decrement;
  final VoidCallback dncrement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 175,
      height: 200,
      decoration: BoxDecoration(
          color: const Color(0xff24263B),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Color(0xff8B8C9E),
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
          Text(
            counterValue.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                heroTag: '$title 1',
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: decrement,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                heroTag: '$title 2',
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                backgroundColor: const Color(0xff8B8C9E),
                onPressed: dncrement,
                child: const Icon(Icons.add),
              ),
            ],
          )
        ],
      ),
    );
  }
}
