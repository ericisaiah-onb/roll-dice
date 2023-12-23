import 'package:flutter/material.dart';
import 'package:roll_dice/roll_dice_button.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.topGradient, this.bottomGradient,
      this.startAlignment, this.endAlignment,
      {super.key});

  final Color? topGradient;
  final Color? bottomGradient;
  final Alignment? startAlignment;
  final Alignment? endAlignment;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment ?? Alignment.topLeft,
          end: endAlignment ?? Alignment.bottomRight,
          colors: [
            topGradient ?? Colors.transparent,
            bottomGradient ?? Colors.transparent,
          ],
        ),
        border: Border.all(
          color: Colors.red,
          width: 10.0,
        ),
      ),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: RollDiceWidget(),
        ),
      ),
    );
  }
}
