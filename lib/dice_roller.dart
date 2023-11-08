import 'package:flutter/material.dart';
import 'dart:math';

var randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller>{


  var dice = 2;

  void rollDice() {
    setState(() {
      dice = randomize.nextInt(6)+1;
    });
  }
  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Image.asset(
            'assets/images/dice-$dice.png',
            width: 200,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.all(0),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}