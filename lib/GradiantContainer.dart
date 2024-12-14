import 'package:flutter/material.dart';
import 'package:roll_dice/MyText.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});
  @override
  Widget build(constext) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purpleAccent,
            Colors.purple,
            Color.fromARGB(255, 103, 37, 158),
            Colors.deepPurpleAccent
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyleText()),
    );
  }
}
