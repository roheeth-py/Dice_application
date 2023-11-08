import 'package:flutter/material.dart';
import 'package:roll_dice/gradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.yellowAccent, Colors.pinkAccent]),
      ),
    ),
  );
}
