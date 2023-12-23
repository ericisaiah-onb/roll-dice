import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(121, 74, 20, 201),
            Color.fromARGB(255, 174, 37, 97),
            Alignment.topLeft,
            Alignment.bottomRight),
      ),
    ),
  );
}
