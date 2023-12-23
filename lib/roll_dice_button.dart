import 'package:flutter/material.dart';
import 'dart:math';

class RollDiceWidget extends StatefulWidget {
  const RollDiceWidget({super.key});

  @override
  State<RollDiceWidget> createState() => _RollDiceWidgetState();
}

class _RollDiceWidgetState extends State<RollDiceWidget> {
  var diceImage = 'assets/images/dice-1.png';

  final diceImages = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  void rollDice() {
    setState(() {
      var random = Random();
      diceImage = diceImages[random.nextInt(max(diceImages.length, 1))];
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(diceImage, width: 200),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: const Text('Roll Dice'),
      ),
    ]);
  }
}
