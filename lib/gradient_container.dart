import 'package:flutter/material.dart';
import 'package:my_app/dice_roller.dart';
import 'package:my_app/styled_text.dart';
import 'package:my_app/styled_image.dart';

var startAllignment = Alignment.topLeft;
var endAllignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: const [
            Color.fromARGB(255, 135, 242, 6),
            Color.fromARGB(255, 111, 255, 125)
          ], begin: startAllignment, end: endAllignment),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
