import 'dart:math';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<Color> myListOfColors = [
    Colors.blue,
    Colors.purple,
  ];
  String imageId = "assets/images/dice-1.png";
  final Random _random = Random(); // Properly initialized here

  void rollDice() {
    setState(() {
      final randomDiceNumber =
          _random.nextInt(6) + 1; // Generates a number between 1 and 6
      imageId = "assets/images/dice-$randomDiceNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: myListOfColors,
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageId,
              width: 150,
            ),
            const SizedBox(
              height: 21,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              child: const Text("Click Here"),
            ),
          ],
        ),
      ),
    );
  }
}
