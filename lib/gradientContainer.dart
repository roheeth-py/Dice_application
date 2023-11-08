import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.gradient, {super.key});
  List<Color> gradient;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradient,
          ),
        ),
        child: const Center(
          child: DiceRoller()
        ),
    );
  }
}
