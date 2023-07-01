import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({super.key});

  void rollDice() {
    // code here
  }

  @override
  Widget build(context) {
    return TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24)),
        onPressed: rollDice,
        child: const Text("Roll Dice"));
  }
}
