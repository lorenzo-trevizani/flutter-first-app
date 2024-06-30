import 'dart:math';

import 'package:flutter/material.dart';

import 'package:first_app/Texts/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDoceRoll = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      currentDoceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDoceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          ),
          child: const StyledText('Roll Dice'),
        ),
      ],
    );
  }
}
