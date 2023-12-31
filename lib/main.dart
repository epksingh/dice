import 'package:dice/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          child: Center(
            child: DiceRoller(),
          ),
        ),
      ),
    ),
  );
}

void rollDice() {
  print("Rolling Dice");
}
