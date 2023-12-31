import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceNumber.png',
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.pink,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            child: const Text("Roll Dice"),
          )
        ],
      ),
    );
  }
}
