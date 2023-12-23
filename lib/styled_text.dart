import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black45,
        shadows: [
          Shadow(
            blurRadius: 10.0,
            color: Colors.white12,
            offset: Offset(5.0, 5.0),
          ),
        ],
      ),
    );
  }
}
