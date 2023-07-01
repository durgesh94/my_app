import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_app/dice/styled_text.dart';
import 'package:my_app/dice/styled_image.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Rolling Dice'),
        StyledImage('assets/images/Dice0$currentDiceRoll.png'),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 24)),
            onPressed: rollDice,
            child: const Text("Roll Dice"))
      ],
    );
  }
}
