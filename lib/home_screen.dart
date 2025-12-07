import 'package:eraa_projects/widgets/age_and_weight_container.dart';
import 'package:eraa_projects/widgets/calculate_button.dart';
import 'package:eraa_projects/widgets/gender_container.dart';
import 'package:eraa_projects/widgets/height_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  double currentSliderValue = 150;
  int _age = 20;
  int _weight = 70;
  void _decrementAge() {
    setState(() {
      if (_age > 1) {
        _age--;
      }
    });
  }

  void _incrementAge() {
    setState(() {
      _age++;
    });
  }

  void _decrementWeight() {
    setState(() {
      if (_weight > 1) {
        _weight--;
      }
    });
  }

  void _incrementWeight() {
    setState(() {
      _weight++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  GenderContainer(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      icon: Icons.male,
                      text: 'Male',
                      isActive: isMale),
                  const SizedBox(width: 9),
                  GenderContainer(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      icon: Icons.female,
                      text: 'Female',
                      isActive: !isMale)
                ])),
            const SizedBox(height: 15),
            HeightContainer(
                value: currentSliderValue.toInt(),
                onChanged: (value) {
                  setState(() {
                    currentSliderValue = value;
                  });
                }),
            const SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              AgeAndWeightContainer(
                  title: 'Weight',
                  counterValue: _weight,
                  onIncrement: _incrementWeight,
                  onDecrement: _decrementWeight),
              const SizedBox(width: 12),
              AgeAndWeightContainer(
                  title: 'Age',
                  counterValue: _age,
                  onIncrement: _incrementAge,
                  onDecrement: _decrementAge),
            ]),
            const SizedBox(height: 15),
            const CalculateButton()
          ],
        ),
      ),
    ));
  }
}
