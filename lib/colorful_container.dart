import 'package:flutter/material.dart';
import 'dart:math';

import 'package:training/styled_text.dart';

class ColorfulContainer extends StatefulWidget {
  const ColorfulContainer({
    super.key,
  });

  @override
  State<ColorfulContainer> createState() => _ColorfulContainerState();
}

class _ColorfulContainerState extends State<ColorfulContainer> {
  var currentDice = 2;

  void _rollDice() => {
        setState(() {
          currentDice = Random().nextInt(6) + 1;
        })
      };

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 118, 29, 133), Colors.purple])),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/dice-$currentDice.png",
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: _rollDice, child: StyledText("Role Dice"))
          ],
        )));
  }
}
